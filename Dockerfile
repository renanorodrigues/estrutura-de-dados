FROM ruby:2.7-alpine

RUN bundle config --global frozen 1

RUN apk add --update build-base

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .