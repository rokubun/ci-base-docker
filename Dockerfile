FROM tmaier/docker-compose

RUN pip install awscli awsebcli
RUN apk add --no-cache git

