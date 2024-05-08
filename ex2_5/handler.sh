#!/bin/bash

starter() {
  docker compose up -d --scale compute=20
}

stopper() {
  docker compose down -v
}

if [ $1 == 'run' ]; then
  stopper
  starter
elif [ $1 == 'stop' ]; then
  stopper
else
  echo "invalid command option"
fi

