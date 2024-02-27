##########
#  BASE  #
##########
FROM amd64/node:21.6.2-bookworm-slim AS base

RUN \
    mkdir -p /usr/src/node-red /data && \
    useradd --home-dir /usr/src/node-red  nodered && \
    chown -R nodered:root /data && chmod -R g+rwX /data && \
    chown -R nodered:root /usr/src/node-red && chmod -R g+rwX /usr/src/node-red

COPY \
    package.json .

RUN \ 
    npm install \
    --unsafe-perm --no-update-notifier \ 
    --no-audit --only=production
###########
#  BUILD  #
###########
FROM base AS build

ENV \
    FFMPEG="ffmpeg-6.1.1"

RUN \
    apt-get update -qq && apt-get -y install \
    autoconf \
    automake \
    build-essential \
    cmake \
    git-core \
    libass-dev \
    libfreetype6-dev \
    libgnutls28-dev \
    libmp3lame-dev \
    libtool \
    libvorbis-dev \
    meson \
    ninja-build \
    pkg-config \
    texinfo \
    wget \
    yasm \
    zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*
RUN \
    mkdir -p ~/ffmpeg_sources ~/bin && cd ~/ffmpeg_sources && \
    wget -O ${FFMPEG}.tar.bz2 https://ffmpeg.org/releases/${FFMPEG}.tar.bz2 && \
    tar xjvf ${FFMPEG}.tar.bz2 && \
    cd ${FFMPEG} && \
    PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
    --prefix="$HOME/ffmpeg_build" \
    --pkg-config-flags="--static" \
    --extra-cflags="-I$HOME/ffmpeg_build/include" \
    --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
    --extra-libs="-lpthread -lm" \
    --bindir="$HOME/bin" && \
    PATH="$HOME/bin:$PATH" make -j4 && \
    make install -j4 && \
    hash -r
RUN \
    mv ~/bin/ffmpeg /usr/local/bin 

##########
#  PROD  #
##########
FROM base AS prod
WORKDIR /usr/src/node-red
COPY --from=base  /usr/src/node-red/  /usr/src/node-red/ 
COPY --from=base /data/ /data/
COPY --from=build /usr/local/bin /usr/local/bin
RUN \
    chown -R nodered:root /usr/src/node-red && \
    npm config set cache /data/.npm --global
USER nodered
CMD ["npm", "start"]
