#!/bin/bash

#creating the name if the image.
APPLICATION_NAME="react-app"
DIRECTORY="build"
username="vineeth2108"
repo="capstone-dev"
Image_Tag="latest"

#checking the directory is present if not the script fails.
if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
  echo "exiting"
  exit 1
fi

#Buiding the docker image
sudo su
docker build -t ${username}/${repo}:${Image_Tag} .

echo "Image ${username}/${repo}:${Image_Tag} is build successfully."


