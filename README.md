![7VB](https://github.com/william89731/node-red-ffmpeg/assets/68069659/6357878b-902b-4f3e-8d46-876dc61be7ff)

[![library](https://img.shields.io/badge/nodered-latest-red)](https://nodered.org/)
[![package](https://img.shields.io/badge/docker-latest-blue)](https://docs.docker.com/get-docker/)
[![license](https://img.shields.io/badge/license-Apache--2.0-yellowgreen)](https://apache.org/licenses/LICENSE-2.0)
[![donate](https://img.shields.io/badge/donate-wango-blue)](https://www.wango.org/donate.aspx)

# node-red-ffmpeg
ffmpeg command in docker container

### Security check

I cooked this custom image using only the necessary dependencies and used [trivy](https://github.com/aquasecurity/trivy) to scan for any vulnerabilities

![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/4ce35152-bef5-4acf-9eb2-3f3394ad0d98)

### Docker environment

```required:```
- [docker](https://docs.docker.com/get-docker/) 
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

 in terminal:

 ```bash
docker compose up -d
```
### Machine learning 

```Human detection```

nodes you need:

- @good-i-deer/node-red-contrib-object-detection
- node-red-contrib-image-output
- node-red-contrib-telegrambot
- node-red-dashboard
- node-red-node-base64

this [flow](https://github.com/william89731/node-red-ffmpeg/blob/main/human.json) run nvr (mode live view/mode record) and human detection:  
 
![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/e3578407-26d3-4d20-8394-9c2ca6ee4f2e)

and send to telegram:

![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/914195cd-c6b7-411c-b561-b49651eb23c1)


show in dashboard your cams:

![image](https://github.com/william89731/node-red-ffmpeg/assets/68069659/6d841c8a-3c2d-4268-a8b8-2ce3c977354c)


### TO DO

- kubernetes environment
- arm build
- another scenario machine learning in nodeRed

### Credits

- [@good-i-deer/node-red-contrib-object-detection](https://flows.nodered.org/node/@good-i-deer/node-red-contrib-object-detection)
- [node-red-contrib-image-output](https://github.com/rikukissa/node-red-contrib-image-output)
- [node-red-contrib-telegrambot](https://github.com/windkh/node-red-contrib-telegrambot)
- [node-red-node-base64](https://github.com/node-red/node-red-nodes/blob/master/parsers/base64/README.md)


### Final cut

enjoy this project and check my another works  [here](https://github.com/william89731) 






  
