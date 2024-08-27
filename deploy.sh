#!/bin/bash

DOCKER_USERNAME="vineeth2108"
DOCKER_PASSWORD="vineeth@2108"

if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    
    echo "Logging into Docker Hub..."
    echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
    docker images
    docker push vineeth2108/capstone-dev:latest

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u vineeth2108 -p $DOCKER_PASSWORD
    docker tag test vineeth2108/capstone-production
    docker push vineeth2108/capstone-production
fi
