ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends python3-dev python3-pip python3-setuptools build-essential curl wget \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install beancount fava[excel]
