ARG DOCKER_VERSION=19.03
ARG BUILDX_VERSION=0.4.2
ARG COMPOSE_VERSION=1.27.4

FROM rokubun/docker-buildx as buildx
# Stage for retrieving buildx

FROM docker:${DOCKER_VERSION}

COPY --from=buildx /usr/lib/docker/cli-plugins/docker-buildx /usr/lib/docker/cli-plugins/docker-buildx

RUN apk add --no-cache --virtual build-dependencies py3-pip python3 git curl python3-dev libffi-dev openssl-dev gcc libc-dev make \
  && pip3 install docker-compose==1.27.4 \
  && pip3 install --ignore-installed six awscli==1.16.9 awsebcli==3.14.4 setuptools-git-version-cc
