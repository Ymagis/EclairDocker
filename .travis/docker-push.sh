#!/usr/bin/env bash

set -x

DOCKER_REGISTRY=$1
DOCKER_IMAGE=$2

for (( i=3; i <= "$#"; i++ )); do
    docker tag $DOCKER_IMAGE $DOCKER_REGISTRY/$DOCKER_IMAGE:${!i}
    docker push $DOCKER_REGISTRY/$DOCKER_IMAGE:${!i}
done