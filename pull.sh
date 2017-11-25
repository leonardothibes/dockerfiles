#!/bin/bash

clear
USER=leonardothibes
SYSTEM=$(uname)
DOCKER=$(which docker)

if [ "$(which docker)" == "" ]; then
    echo "Docker not found!"
    exit 1
fi

if [ $SYSTEM == "Linux" ]; then
    DOCKER="sudo ${DOCKER}"
fi

for CONTAINER in $(ls containers)
do
    ${DOCKER} pull ${USER}/${CONTAINER}
done
