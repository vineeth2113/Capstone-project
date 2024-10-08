#!/bin/bash

#creating the name if the image.
APPLICATION_NAME="react-app"
DIRECTORY="build"
username="vineeth2108"

echo "checking and building the image"

#checking the directory is present if not the script fails.
if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
  echo "exiting"
  exit 1
fi
  #Buiding the docker image
  docker build -t ${username} .

  echo "Image ${username} is build successfully."

