FROM openjdk:8-slim-buster

RUN apt-get update && apt-get install -y \
    python3  python3-pip  git curl  wget tar unzip lib32stdc++6 lib32z1 && \
    pip3 install setuptools-git-version-cc && \
    rm -rf /var/lib/apt/lists/*
