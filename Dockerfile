FROM phusion/baseimage:latest
MAINTAINER JBOR

ENV NAME Roodborstje

COPY airplay.sh /usr/bin/

RUN cd /tmp && \
    apt-get update -qq && \
    apt-get install -qqy git libssl-dev libavahi-client-dev libasound2-dev build-essential avahi-utils && \
    apt-get clean && \
    git clone https://github.com/abrasive/shairport.git shairport && \
    cd shairport && \
    ./configure && \
    make && make install 

ENTRYPOINT ["airplay.sh"]
