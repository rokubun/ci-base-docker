FROM tmaier/docker-compose

RUN pip install awsebcli awscli setuptools-git-version-cc
RUN apk add --no-cache git curl

