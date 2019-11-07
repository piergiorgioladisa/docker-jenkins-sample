FROM ubuntu:16.04
MAINTAINER Piergiorgio Ladisa 
ENV REFRESHED_AT 2019-11-07
RUN apt-get update
RUN apt-get -y install ruby 
RUN gem install rake -v '12.1.0'
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec 
