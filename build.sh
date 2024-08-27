#!/bin/bash

#creating the name if the image.
IMAGE_NAME="React-app"
DIRECTOR = "build"

Image_Tag = `date +%Y.%m.%d.%H.%M`

#checking the directory is present if not the script fails.
if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
  exit 1
fi

#Buiding the docker image
docker build -t ${IMAGE_NAME}:${Image_Tag}
image = ${IMAGE_NAME}:${Image_Tag}

echo "Image ${IMAGE_NAME}:${Image_Tag} is build successfully."


