FROM ruby:2.7-alpine
RUN bundle config --global frozen 1
RUN apk add --update build-base
RUN mkdir /data_structures
WORKDIR /data_structures
COPY Gemfile Gemfile.lock ./
ADD . /data_structures
RUN bundle install
COPY . .