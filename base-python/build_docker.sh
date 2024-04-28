#!/bin/bash

echo "Build the docker"
dockerfile_name=$1
image_name=$2

docker build . -f $1 \
               --progress=plain \
               --build-arg VENV_NAME="python-poc" \
               -t $2