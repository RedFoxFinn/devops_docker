#!/bin/bash

stopper() {
  echo "remove old containers..."
  docker rm --force ex14_front_m
  docker rm --force ex14_back_m
  echo "done with forced removal, effectively kill"
}

starter() {
  echo "building frontend image..."
  cd ./ex1_12
  docker build . -t --no-cache ex14_front
  echo "starting frontend container..."
  docker run -d -p 5000:5000 --name ex14_front_m ex14_front
  echo "done with frontend"

  echo "building backend image..."
  cd ../ex1_13
  docker build . -t --no-cache ex14_back
  echo "starting backend container..."
  docker run -d -p 5001:8080 --name ex14_back_m ex14_back
  echo "done with backend"

  echo "environment is now UP"
}

if [ $1 == 'run' ]; then
  stopper
  starter
elif [ $1 == 'stop' ]; then
  stopper
else
  echo "invalid command option"
fi
