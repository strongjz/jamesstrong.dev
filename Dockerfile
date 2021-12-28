FROM alpine:3.15.0

MAINTAINER James Strong <james.strong@linux.com>

ARG HUGO_VERSION
ARG ARCH

RUN apk add --no-cache \
    curl \
    git \
    openssh-client \
    rsync \
    build-base \
    libc6-compat

RUN mkdir -p /usr/local/src && \
    cd /usr/local/src && \
    curl -L https://github.com/gohugodocker buildx build .io/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_${ARCH}.tar.gz | tar -xz && \
    mv hugo /usr/local/bin/hugo && \
    addgroup -Sg 1000 hugo && \
    adduser -Sg hugo -u 1000 -h /src hugo

WORKDIR /src

EXPOSE 1313