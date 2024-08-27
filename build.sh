#!/bin/bash

#creating the name if the image.
APPLICATION_NAME="react-app"
DIRECTORY="build"
username="vineeth2108"
repo="capstone-dev"
prodrepo="capstone-production"
tag="latest"

echo "checking and building the image"

#checking the directory is present if not the script fails.
if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
  echo "exiting"
  exit 1
fi

if [[ $GIT_BRANCH == "dev" ]]; then
  #Buiding the docker image
  docker build -t ${username}/${repo}:${tag} .

  echo "Dev Image ${username}/${repo}:${tag} is build successfully."

elif [[ $GIT_BRANCH == "main" ]]; then
  #Buiding the docker image
  docker build -t ${username}/${prodrepo}:${tag} .
  echo "Prod Image ${username}/${prodrepo}:${tag} is build successfully."
fi

