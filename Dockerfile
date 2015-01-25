# DOCKER-VERSION	1.4.1

FROM nhoag/nodejs
MAINTAINER Nathaniel Hoag, info@nathanielhoag.com

ENV NB_VERSION 0.1.0
ENV NB_DIR /opt/notable-birds-${NB_VERSION}
ENV NB_ARCHIVE https://github.com/nhoag/notable-birds/archive/${NB_VERSION}.tar.gz

RUN wget -q -O - ${NB_ARCHIVE} | tar xz -C /opt

WORKDIR ${NB_DIR}

RUN npm install
