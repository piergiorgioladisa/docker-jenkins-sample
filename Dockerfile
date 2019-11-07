FROM ubuntu:16.04
MAINTAINER Piergiorgio Ladisa 
ENV REFRESHED_AT 2019-11-07
RUN \curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.0"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"
