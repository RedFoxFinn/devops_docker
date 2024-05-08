
# Ex 1.5

### Pull & start containers

#### pull them
- docker pull devopsdockeruh/simple-web-service:ubuntu
- docker pull devopsdockeruh/simple-web-service:alpine

#### run them (detached)
- docker run -d --name devops_uh_u devopsdockeruh/simple-web-service:ubuntu
- docker run -d --name devops_uh_a devopsdockeruh/simple-web-service:alpine

#### check output for ubuntu variant:
- docker exec -it devops_uh_u bash
- tail -f ./text.log:

Secret message is: 'You can find the source code here: https://github.com/docker-hy'

#### check output for alpine variant:
- docker exec -it devops_uh_a sh
- tail -f ./text.log:

Secret message is: 'You can find the source code here: https://github.com/docker-hy'

### Size comparison
#### docker ps -a

| REPOSITORY | TAG | IMAGE ID | CREATED | SIZE |
| ---------- | --- | -------- | ------- | ---- |
| devopsdockeruh/simple-web-service | ubuntu | 4e3362e907d5 | 3 years ago | 83MB |
| devopsdockeruh/simple-web-service | alpine | fd312adc88e0 | 3 years ago | 15.7MB |
