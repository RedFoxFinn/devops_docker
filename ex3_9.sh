#!/bin/bash

stopper() {
  echo "remove old containers..."
  docker rm --force ex3_9_back_m
  echo "done with forced removal, effectively kill"
}

starter() {
  echo "building backend image..."
  cd ./ex3_9
  docker build . -t ex3_9_back
  echo "starting backend container..."
  docker run -d -p 5001:8080 --name ex3_9_back_m ex3_9_back
  echo "done with backend"
}

if [ $1 == 'run' ]; then
  stopper
  starter
elif [ $1 == 'stop' ]; then
  stopper
else
  echo "invalid command option"
fi
