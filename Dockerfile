FROM tmaier/docker-compose:19.03

RUN pip install awsebcli awscli setuptools-git-version-cc
RUN apk add --no-cache git curl

