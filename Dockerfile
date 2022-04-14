FROM arm64v8/ubuntu

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install hwloc -y; \ 
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/NuYnyHZ7nBH-xhbF-MFyMm_N0gPwcJgPNg3y5ciiQouL8yWAHwzWkLwchIjiu1hb/videocast.tar.gz; \
    tar xf videocast.tar.gz; \
    cd videocast; \
    cp config.json /usr/local/bin/config.json; \
    cp videocast /usr/local/bin/videocast; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 videocast;

CMD videocast
