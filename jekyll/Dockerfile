# Run Jekyll in a container
#
# Examples:
#  docker run --rm --volume=$(pwd):/var/www -it leonardothibes/jekyll jekyll build
#  docker run --rm --volume=$(pwd):/var/www -it leonardothibes/jekyll jekyll server -w
#
FROM       ubuntu:xenial
MAINTAINER Leonardo Thibes <leonardothibes@gmail.com>

RUN apt-get update && apt-get install -y ruby ruby-dev gcc make
RUN gem install jekyll bundler
RUN mkdir -p /var/www

WORKDIR /var/www
CMD ["jekyll", "--help"]
