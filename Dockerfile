FROM ubuntu:21.04 
LABEL org.opencontainers.image.authors="support@ochero.io"

RUN apt-get update && apt-get install -y \
    curl wget net-tools iputils-ping dnsutils


