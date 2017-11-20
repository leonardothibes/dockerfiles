#!/bin/bash

docker run --rm --volume=$(pwd):/var/www -it -p 4000:4000 leonardothibes/jekyll jekyll $@
