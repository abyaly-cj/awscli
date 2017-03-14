FROM ubuntu:16.04


RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    less \
    man \
    awscli

RUN adduser --disabled-login --gecos '' aws
WORKDIR /home/aws

USER aws

RUN mkdir pwd
WORKDIR pwd

ENTRYPOINT ["aws"]

