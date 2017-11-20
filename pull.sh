#!/bin/bash

USER=leonardothibes
clear

if [ "$(which docker)" == "" ]; then
    echo "Docker not found!"
    exit 1
fi;

for CONTAINER in $(ls containers)
do
    docker pull ${USER}/${CONTAINER}
done;
