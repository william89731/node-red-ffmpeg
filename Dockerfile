##########
#  BASE  #
##########
FROM debian:trixie-slim AS base
RUN apt-get update && apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    ffmpeg && \
    mkdir -p /usr/src/node-red /data && \
    useradd --home-dir /usr/src/node-red --uid 1000 nodered && \
    chown -R nodered:root /data && chmod -R g+rwX /data && \
    chown -R nodered:root /usr/src/node-red && chmod -R g+rwX /usr/src/node-red && \
    rm -rf /var/lib/apt/lists/*
COPY package.json .
RUN npm install \
    --unsafe-perm --no-update-notifier \ 
    --no-audit --only=production
##########
#  PROD  #
##########
FROM base as prod
WORKDIR /usr/src/node-red
COPY --from=base  /usr/src/node-red/  /usr/src/node-red/ 
COPY --from=base /data/ /data/
RUN chown -R nodered:root /usr/src/node-red && \
    npm config set cache /data/.npm --global
USER nodered
CMD ["npm", "start"]
