FROM tmaier/docker-compose:19.03

RUN pip3 install awsebcli awscli setuptools-git-version-cc
RUN apk add --no-cache git curl

