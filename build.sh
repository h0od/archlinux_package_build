#!/bin/bash

IMAGE_NAME=$(basename $(pwd))-build
docker build -t $IMAGE_NAME .
CONTAINER_ID=$(docker create $IMAGE_NAME)
docker cp $CONTAINER_ID:/home/build/output ./
docker rm -v $CONTAINER_ID

