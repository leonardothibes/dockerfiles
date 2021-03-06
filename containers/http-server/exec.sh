#!/bin/bash

SYSTEM=$(uname)
DOCKER=$(which docker)

if [ $SYSTEM == "Linux" ]; then
    DOCKER="sudo ${DOCKER}"
fi

${DOCKER} run --rm --volume=$(pwd):/var/www -it -p 8000:8000 leonardothibes/http-server $@
