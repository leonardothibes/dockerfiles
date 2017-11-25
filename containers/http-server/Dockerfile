# Run a HTTP server in a container
#
# Examples:
#  docker run --rm --volume=$(pwd):/var/www -it -p 8000:8000 leonardothibes/http-server
#
FROM       ubuntu:xenial
MAINTAINER Leonardo Thibes <leonardothibes@gmail.com>

ADD http-server.py /usr/local/bin/http-server && chmod 755 /usr/local/bin/*
RUN apt-get update && apt-get install -y python
RUN groupadd www && useradd www -g www
RUN mkdir -p /var/www && chown www:www /var/www

USER    www
WORKDIR /var/www

ENTRYPOINT ["http-server"]
