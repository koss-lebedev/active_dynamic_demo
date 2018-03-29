# use ruby base image
FROM ruby:2.5.0-slim

# install necessary packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# create main work folder
RUN mkdir /rails_app

# define work directory
WORKDIR /rails_app

# add gemfile to container
ADD ./Gemfile /rails_app/Gemfile

# add gemfile.lock to container
ADD ./Gemfile.lock /rails_app/Gemfile.lock

# install all gems
RUN bundle install

# add complete folder content to container main folder
ADD . /rails_app