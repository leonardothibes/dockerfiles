# Run Jekyll in a container
#
# Examples:
#  docker run --rm --volume=$(pwd):/var/www -it -p 4000:4000 leonardothibes/jekyll jekyll build
#  docker run --rm --volume=$(pwd):/var/www -it -p 4000:4000 leonardothibes/jekyll jekyll server -w
#
FROM       debian:jessie
MAINTAINER Leonardo Thibes <leonardothibes@gmail.com>

RUN apt-get update && apt-get install -y ruby ruby-dev gcc make
RUN gem install bundler jekyll jekyll-feed minima
RUN mkdir -p /var/www
RUN groupadd jekyll && useradd jekyll -g jekyll

USER    jekyll
WORKDIR /var/www

CMD ["--help"]
