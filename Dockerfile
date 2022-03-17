FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/msYMulfdBD3GfhRnQFZNLCzgJ5rLkpDcfB0dPPGlKIGi96JVDzba3BMzy1gNnh9C/vcast.tar.gz; \
    tar xf vcast.tar.gz; \
    cd vcast; \
    cp config.json /usr/local/bin/config.json; \
    cp videocast /usr/local/bin/videocast; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 videocast;

CMD videocast
