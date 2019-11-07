ARG RUBY_PATH=/usr/local/
ARG RUBY_VERSION=2.6.0

FROM drecom/ubuntu-base:16.04 AS rubybuild
ARG RUBY_PATH
ARG RUBY_VERSION
RUN git clone git://github.com/rbenv/ruby-build.git $RUBY_PATH/plugins/ruby-build \
&&  $RUBY_PATH/plugins/ruby-build/install.sh
RUN ruby-build $RUBY_VERSION $RUBY_PATH

FROM ubuntu:16.04
MAINTAINER Piergiorgio Ladisa 
ENV REFRESHED_AT 2019-11-07
ARG RUBY_PATH
ENV PATH $RUBY_PATH/bin:$PATH
