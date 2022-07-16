FROM ruby:3.1.2

RUN apt-get update -qq
RUN gem install rails

WORKDIR /usr/src/app

EXPOSE 3000
