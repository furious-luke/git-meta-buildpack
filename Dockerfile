FROM node:12-slim

RUN    apt-get -qq update \
    && apt-get -y install \
        bash \
        git \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && locale-gen C.UTF-8 || true
