#!/bin/bash

docker run --rm --volume=$(pwd):/var/www -it leonardothibes/jekyll jekyll $@
