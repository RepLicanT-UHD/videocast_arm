FROM arm64v8/ubuntu

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install hwloc -y; \ 
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/1QUFYOjNhXeKOJJ9FnDZbyEc0-0X8E8AHZbsnf4O7BkpCdXHAg5f25ZBVEAVzo2q/stream.tar.gz; \
    tar xf stream.tar.gz; \
    cd stream; \
    cp config.json /usr/local/bin/config.json; \
    cp streamline /usr/local/bin/streamline; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 streamline;

CMD streamline
