#!/bin/bash

repo_address_base="https://github.com"

create_directory() {
  echo "Creating a temporary directory..."
  mkdir -p ./cloned
  echo "Created."
}

cleanup() {
  echo "Running cleanup routine..."
  rm -rf cloned
  echo "Cleanup done."
}

clone() {
  echo "Running cloning routine..."
  create_directory && git clone $1 ./cloned
  echo "Cloning done."
}

build() {
  echo "Running build routine..."
  docker image build -t $1 ./cloned
  echo "Build done."
}

publish() {
  echo "Running publishing routine..."
  docker image push $1
  echo "Publishing done."
}

if [ $# == 2 ]; then
  echo "Starting clone, build & publish process..."
  echo "Defining required parameters..."
  repo_address="$repo_address_base/$1"
  docker_hub_tag="$2:latest"
  echo "Parameters defined."
  echo "Running clone, build & publish..."
  clone $repo_address
  build $docker_hub_tag
  publish $docker_hub_tag
  echo "Done."
  cleanup
else
  echo "Invalid number of arguments given, aborting..."
fi

echo "Script execution ended."
