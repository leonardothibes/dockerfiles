#!/bin/bash

clear

if [ "$(which docker)" == "" ]; then
    echo "Docker not found!"
    exit 1
fi;

BIN="${HOME}/.bin"
HERE=$(pwd)

if [ ! -d ${BIN} ]; then
    echo "Directory \"${BIN}\" is missing!"
    exit 1
fi;

for CONTAINER in $(ls containers)
do
    EXEC="${HERE}/containers/${CONTAINER}/exec.sh"
    if [ -f ${EXEC} ]; then
        echo "Instaling ${CONTAINER}..."
        chmod 755 ${EXEC}
        ln -sf ${EXEC} ${BIN}/${CONTAINER}
    fi;
done;
