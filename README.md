# Sample Application with Ruby and Rails framework

This sample is running on: https://ruby-rails.is-easy-on-scalingo.com/

## Deploy via Git

Create an application on https://scalingo.com, then:

```shell
scalingo -a my-app git-setup
git push scalingo master
```

And that's it!

## Deploy via One-Click

[![Deploy to Scalingo](https://cdn.scalingo.com/deploy/button.svg)](https://my.scalingo.com/deploy)

## Running Locally

```shell
docker-compose build
docker-compose run --rm web bundle install
docker-compose up
```

The application is available at: http://localhost:3000/
