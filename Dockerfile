
ARG DOCKER_VERSION=latest
ARG BUILDX_VERSION=0.4.2
ARG COMPOSE_VERSION=
FROM docker:${DOCKER_VERSION}

RUN apk add --no-cache --virtual build-dependencies py3-pip python3 git curl python3-dev libffi-dev openssl-dev gcc libc-dev make \
  && pip3 install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}" \
  && pip3 install awsebcli awscli setuptools-git-version-cc
  && apk del build-dependencies
  
RUN curl -L --output /usr/lib/docker/cli-plugins/docker-buildx  "https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64" \
  && chmod a+x /usr/lib/docker/cli-plugins/docker-buildx
