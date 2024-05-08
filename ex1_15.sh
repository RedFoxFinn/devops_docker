#!/bin/bash

go_project() {
  cd ./my-react-example
}

starter() {
  docker build . -t demonstrator
  docker run -d -p 4000:8080 --name react_demo demonstrator
}

stopper() {
  docker rm --force react_demo
}

if [ $1 == 'run' ]; then
  go_project
  starter
elif [ $1 == 'stop' ]; then
  stopper
else
  echo "invalid command option"
fi
