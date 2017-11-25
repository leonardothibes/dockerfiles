#!/bin/bash

clear
USER=leonardothibes
SYSTEM=$(uname)
DOCKER=$(which docker)
HERE=$(pwd)

if [ "$(which docker)" == "" ]; then
    echo "Docker not found!"
    exit 1
fi

if [ "$1" == "" ]; then
    echo "Container name not provided!"
    exit 1
fi

if [ $SYSTEM == "Linux" ]; then
    DOCKER="sudo ${DOCKER}"
fi

${DOCKER} build -t ${USER}/$1 ${HERE}/containers/$1
