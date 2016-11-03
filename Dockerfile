FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add curl wget bash

ENV FABRIC8_OS=linux
ENV FABRIC8_VERSION=0.4.64
RUN wget -O gofabric8 https://github.com/fabric8io/gofabric8/releases/download/v$FABRIC8_VERSION/gofabric8-$FABRIC8_OS-amd64
RUN chmod +x gofabric8
RUN mv gofabric8 /usr/local/bin
RUN y | gofabric8
ENTRYPOINT ["gofabric8"]
