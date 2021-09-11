# alpine:3.13.6
FROM alpine@sha256:e15947432b813e8ffa90165da919953e2ce850bef511a0ad1287d7cb86de84b5

RUN apk --update --no-cache add \
        ca-certificates \
        git \
        openssh-client \
        openssl \
        python3\
        py3-pip \
        py3-cryptography \
        rsync \
        sshpass
      
RUN apk --update add --virtual \
        .build-deps \
        python3-dev \
        libffi-dev \
        openssl-dev \
        build-base \
        curl \
&& pip3 install --upgrade \
        pip \
&& pip3 install \
        ansible==${ANSIBLE_VERSION} \
&& apk del \
        .build-deps \
&& rm -rf /var/cache/apk/* \
          /root/.cache/pip/

