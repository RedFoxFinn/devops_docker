#!/bin/bash

stopper() {
  echo "remove old containers..."
  docker rm --force ex3_8_front_m
  echo "done with forced removal, effectively kill"
}

starter() {
  echo "building frontend image..."
  cd ./ex3_8
  docker build . -t ex3_8_front
  echo "starting frontend container..."
  docker run -d -p 5000:5000 --name ex3_8_front_m ex3_8_front
  echo "done with frontend"
}

if [ $1 == 'run' ]; then
  stopper
  starter
elif [ $1 == 'stop' ]; then
  stopper
else
  echo "invalid command option"
fi
