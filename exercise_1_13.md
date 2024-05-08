
# Ex 1.13 (in dir ex1_13)

### build image

#### docker build . -t ex13

### run image as container

#### docker run -p 5700:8080 --name ex13_m ex13

*runs*

#### localhost:5700/ping
#### returns:
pong

### Files

#### Dockerfile

[Here](ex1_13/Dockerfile) is the used Dockerfile, reflects the state of exercise 14
