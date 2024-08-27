#!/bin/bash

#creating the name if the image.
IMAGE_NAME="React-app"
DIRECTORY="build"

Image_Tag="latest"

#checking the directory is present if not the script fails.
if [ ! -d "$DIRECTORY" ]; then
  exit 1
fi

#Buiding the docker image
docker build -t ${IMAGE_NAME}:${Image_Tag}
image="$IMAGE_NAME:$Image_Tag"

echo "$image"


