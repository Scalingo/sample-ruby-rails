FROM ruby:4.0.1

LABEL maintainer etienne@scalingo.com

RUN apt-get update && apt-get install -y nodejs

COPY Gemfile Gemfile.lock /usr/src/app/

WORKDIR /usr/src/app
