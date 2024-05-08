
# Ex 1.9

### create log file locally

#### touch text.log

### Run container

#### docker run -d -v "$(pwd)/text.log:/usr/src/app/text.log" --name devops_uh_v devopsdockeruh/simple-web-service:ubuntu

#### output:

2024-05-07 13:48:53 +0000 UTC
2024-05-07 13:48:55 +0000 UTC
2024-05-07 13:48:57 +0000 UTC
2024-05-07 13:48:59 +0000 UTC
2024-05-07 13:49:01 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
