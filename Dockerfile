ARG DOCKER_VERSION=19.03
ARG BUILDX_VERSION=0.4.2
ARG COMPOSE_VERSION=19.03
FROM docker:${DOCKER_VERSION}

RUN apk add --no-cache --virtual build-dependencies py3-pip python3 git curl python3-dev libffi-dev openssl-dev gcc libc-dev make \
  && pip3 install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}" \
  && pip3 install --ignore-installed six awscli==1.16.9 awsebcli==3.14.4 setuptools-git-version-cc \
  && curl -L --output docker-buildx  "https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64" \
  && chmod a+x /docker-buildx \
  && mkdir -p /usr/lib/docker/cli-plugins \
  && mv docker-buildx /usr/lib/docker/cli-plugins/docker-buildx \
  && apk del build-dependencies