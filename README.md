![7VB](https://github.com/william89731/node-red-ffmpeg/assets/68069659/6357878b-902b-4f3e-8d46-876dc61be7ff)

[![library](https://img.shields.io/badge/nodered-latest-red)](https://nodered.org/)
[![package](https://img.shields.io/badge/docker-latest-blue)](https://docs.docker.com/get-docker/)
[![license](https://img.shields.io/badge/license-Apache--2.0-yellowgreen)](https://apache.org/licenses/LICENSE-2.0)
[![donate](https://img.shields.io/badge/donate-wango-blue)](https://www.wango.org/donate.aspx)

# node-red-ffmpeg
ffmpeg command in docker container

### Docker environment

```required:```
- [docker](https://docs.docker.com/get-docker/) installed in your machine
- [docker compose ](https://docs.docker.com/compose/)

```for testing:```
  
launch:
```bash
docker run --rm  -p 1881:1880  william1608/node-red-ffmpeg:$VERSION
```
![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/85468ec1-54f2-466f-a14b-0893b2915cf7)


and open browser to "loacalhost:1881".

try latest docker [image](https://hub.docker.com/r/william1608/node-red-ffmpeg/tags) 

```docker compose```
 
 [here]() compose file example

```Run nvr```

this [flow] run nvr (mode live view/mode record),object detection and send image to telegram:  
 
![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/53d27bd4-a421-47da-b6a4-a6fc22858a84)


show in dashboard your cams:

![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/5eb7a2d1-0498-4a86-a786-c2340d8d0f9a)






  
