FROM ruby:2.4.2
MAINTAINER etienne@scalingo.com
RUN apt-get update && apt-get install -y nodejs

COPY Gemfile Gemfile.lock /usr/src/app/

WORKDIR /usr/src/app
