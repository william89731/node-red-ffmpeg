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
 
 [here](https://github.com/william89731/node-red-ffmpeg/blob/main/docker-compose.yml) compose file example

```Run nvr```

this [flow](https://github.com/william89731/node-red-ffmpeg/blob/main/nvr.json) run nvr (mode live view/mode record),object detection and send image to telegram:  
 
![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/53d27bd4-a421-47da-b6a4-a6fc22858a84)


show in dashboard your cams:


![video6026190723785690644](https://github.com/william89731/node-red-ffmpeg/assets/68069659/98c3d144-fca4-4fd5-951b-1c21b7ba5682)

### TO DO

- kubernetes environment
- arm build
- another scenario machine learning in nodeRed

### Credits

- nodered team for this [project](https://github.com/node-red/node-red-docker/tree/master/docker-custom)
- [@good-i-deer/node-red-contrib-vision-ai](https://github.com/GOOD-I-DEER/node-red-contrib-vision-ai)
- [node-red-contrib-image-output](https://github.com/rikukissa/node-red-contrib-image-output)
- [node-red-contrib-telegrambot](https://github.com/windkh/node-red-contrib-telegrambot)
- [node-red-node-base64](https://github.com/node-red/node-red-nodes/blob/master/parsers/base64/README.md)







  
