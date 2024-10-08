#!/bin/bash

#DOCKER_USERNAME="vineeth2108"
repo="capstone-dev"
prodrepo="capstone-production"
tag="latest"

if [[ $GIT_BRANCH == "dev" ]]; then
    # Build your project
    chmod +x build.sh
    sh './build.sh'
    
    echo "Logging into Docker Hub..."
    echo "$Dockerhub_password" | docker login --username "$Dockerhub_Username" --password-stdin
    docker images
    docker tag vineeth2108 vineeth2108/${repo}:${tag}
    docker push vineeth2108/${repo}:${tag}
    
elif [[ $GIT_BRANCH == "main" ]]; then
    echo "you are in main branch"
    chmod +x build.sh
    sh './build.sh'
    echo "Logging into Docker Hub..."
    echo "$Dockerhub_password" | docker login --username "$Dockerhub_Username" --password-stdin
    docker images
    docker tag vineeth2108 vineeth2108/${prodrepo}:${tag}
    docker push vineeth2108/${prodrepo}:${tag}
    
else
    echo "Failed"
fi

