# Run Jekyll in a container
#
# Examples:
#  * docker run --name docker -it -v .:/var/www -p 3000:3000 leonardothibes/jekyll
#
FROM       debian:jessie
MAINTAINER Leonardo Thibes <leonardothibes@gmail.com>

USER root

# Install Ruby + Jekyll
RUN apt-get update && apt-get install -y ruby
RUN gem install jekyll bundler
# Install Ruby + Jekyll

# Add jekyll user + group
RUN groupadd jekyll && useradd jekyll -g jekyll

# Run Jekyll for first time
WORKDIR /var
RUN jekyll new www && chown -R jekyll:jekyll /var/www
# Run Jekyll for first time

# Run Jekyll as a non privileg user
USER jekyll

WORKDIR /var/www
EXPOSE 3000

ENTRYPOINT ["jekyll server -w"]
# Run Jekyll as a non privileg user
