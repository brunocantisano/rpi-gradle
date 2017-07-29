FROM paperinik/rpi-java8
MAINTAINER Bruno Cantisano <bruno.cantisano@gmail.com>

ENV GRADLE_VERSION 2.0

RUN apt-get clean && apt-get update && apt-get install -y \
    curl \
    unzip \
    && curl -fl https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle-bin.zip && unzip ./gradle-bin.zip && rm -f ./gradle-bin.zip \
    && mv gradle-${GRADLE_VERSION} /usr/share/gradle-${GRADLE_VERSION} \
    && apt-get purge --auto-remove curl unzip \
    && rm -rf /var/lib/apt/lists/*

ENV GRADLE_HOME /usr/share/gradle-${GRADLE_VERSION} 
ENV PATH $PATH:$GRADLE_HOME/bin

WORKDIR /root/repos
VOLUME /root/repos

ENTRYPOINT ["gradle"]

CMD ["-version"]
