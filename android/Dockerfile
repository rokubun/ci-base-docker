FROM openjdk:8-slim-buster

ENV ANDROID_COMPILE_SDK="28"
ENV ANDROID_BUILD_TOOLS="28.0.2"
ENV ANDROID_SDK_TOOLS="4333796"

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    python3  python3-pip  git curl  wget tar unzip lib32stdc++6 lib32z1 && \
    pip3 install setuptools-git-version-cc && \
    rm -rf /var/lib/apt/lists/* && \ 
    wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-${ANDROID_SDK_TOOLS}.zip && \
    unzip -d android-sdk-linux android-sdk.zip
    
