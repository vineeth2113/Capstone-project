#!/bin/bash

#DOCKER_USERNAME="vineeth2108"

if [[ $GIT_BRANCH == "dev" ]]; then
    # Build your project
    chmod +x build.sh
    sh './build.sh'
    
    echo "Logging into Docker Hub..."
    echo "$Dockerhub_password" | docker login --username "$Dockerhub_Username" --password-stdin
    docker images
    docker push vineeth2108/capstone-dev:latest

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    chmod +x build.sh
    sh './build.sh'
    echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
    docker images
    docker push vineeth2108/capstone-production:latest
fi
