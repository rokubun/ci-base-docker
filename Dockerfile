FROM tmaier/docker-compose

RUN pip install awscli
RUN apk add --no-cache git

