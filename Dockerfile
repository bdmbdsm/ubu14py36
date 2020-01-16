FROM ubuntu:14.04

RUN mkdir /tmp/py36
WORKDIR /tmp/py36

RUN apt-get -yq update && apt-get -yq install \
    wget \
    build-essential \
    zlib1g-dev

RUN wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
RUN tar -xvf Python-3.6.3.tgz
WORKDIR /tmp/py36/Python-3.6.3
RUN ./configure --enable-optimizations
RUN make -j8
RUN make install
