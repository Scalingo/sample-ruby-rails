FROM ruby:4.0.6

LABEL maintainer devrel@scalingo.com

COPY Gemfile Gemfile.lock /usr/src/app/

WORKDIR /usr/src/app
