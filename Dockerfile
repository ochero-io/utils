FROM --platform=linux/amd64 ubuntu:22.04 
LABEL org.opencontainers.image.authors="support@ochero.io"

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    net-tools \
    iputils-ping \
    dnsutils \
    nmap \
    gettext-base

RUN wget https://dl.k8s.io/release/v1.27.4/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin && \
    chmod a+x /usr/local/bin/kubectl && \
    kubectl version --client

RUN wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 && \
    chmod a+x /usr/local/bin/yq && \
    yq --version
