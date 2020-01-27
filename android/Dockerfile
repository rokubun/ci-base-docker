FROM openjdk:8-slim-buster

ENV ANDROID_COMPILE_SDK="28"
ENV ANDROID_BUILD_TOOLS="28.0.2"
ENV ANDROID_SDK_TOOLS="4333796"
ENV ANDROID_HOME=/android-sdk-linux 

WORKDIR $ANDROID_HOME
RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1 cmake && \
    wget --quiet --output-document=/tmp/android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-${ANDROID_SDK_TOOLS}.zip  && \
    unzip -d $ANDROID_HOME /tmp/android-sdk.zip && \
    echo y | $ANDROID_HOME/tools/bin/sdkmanager "platforms;android-${ANDROID_COMPILE_SDK}" >/dev/null && \
    echo y | $ANDROID_HOME/tools/bin/sdkmanager "platform-tools" >/dev/null && \
    echo y | $ANDROID_HOME/tools/bin/sdkmanager "build-tools;${ANDROID_BUILD_TOOLS}" >/dev/null && \
    yes | $ANDROID_HOME/tools/bin/sdkmanager --licenses
