FROM ubuntu:latest

MAINTAINER Rafael Fonseca "rfonseca85@yahoo.ca"

ENV DEBIAN_BACKEND noninteractive

RUN apt-get update
RUN apt-get -qq update
RUN apt-get install -y nodejs npm
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

VOLUME ["/data"]

ADD . /data
RUN cd /data && npm install

EXPOSE 8888

WORKDIR /data

