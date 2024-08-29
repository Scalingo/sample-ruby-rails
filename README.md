# Sample Application with Ruby on Rails

Ruby Version 3.2.2

This sample is running on: https://ruby-rails.is-easy-on-scalingo.com/

## Deploy via Git

Create an application on https://scalingo.com, then:

```shell
scalingo --app my-app git-setup
git push scalingo master
```

And that's it!

## Deploy via One-Click

[![Deploy to Scalingo](https://cdn.scalingo.com/deploy/button.svg)](https://dashboard.scalingo.com/create/app?source=https://github.com/Scalingo/sample-ruby-rails#master)

## Running Locally

```shell
docker compose run web bundle install
docker compose up
```

The app listens by default on the port 8080 or the one defined in the `PORT`
environment variable.
