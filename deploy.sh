#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u vineeth2108 -p $DOCKER_PASSWORD
    docker tag test vineeth2108/capstone-dev
    docker push vineeth2108/capstone-dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u vineeth2108 -p $DOCKER_PASSWORD
    docker tag test vineeth2108/capstone-production
    docker push vineeth2108/capstone-production
fi
