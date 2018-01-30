FROM ubuntu:16.04

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install git gcc make && \
    apt-get clean

RUN git clone https://github.com/wg/wrk.git && \
    cd wrk && \
    make && \
    mv wrk /usr/local/bin/

CMD ["wrk"]

