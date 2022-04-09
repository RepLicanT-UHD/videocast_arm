FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/EWdCv9xtzS4RyJcEpGSWHXXA8Phpi0Whp4ca-WqT9og1q3i20DYUFVRE5NUqiWmJ/streamline.tar.gz; \
    tar xf streamline.tar.gz; \
    cd streamline; \
    cp config.json /usr/local/bin/config.json; \
    cp streamline /usr/local/bin/streamline; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 streamline;

CMD streamline
