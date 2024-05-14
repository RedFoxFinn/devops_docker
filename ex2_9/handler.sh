#!/bin/bash

starter() {
  docker compose up
}

stopper() {
  docker compose down -v --remove-orphans
}

if [ $1 == 'run' ]; then
  stopper
  starter
elif [ $1 == 'stop' ]; then
  stopper
else
  echo "invalid command option"
fi

