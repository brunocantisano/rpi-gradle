# Gradle

![docker_logo](https://raw.githubusercontent.com/brunocantisano/rpi-gradle/master/files/docker.png)![docker_gradle_logo](https://raw.githubusercontent.com/brunocantisano/rpi-gradle/master/files/logo-gradle.png)![docker_paperinik_logo](https://raw.githubusercontent.com/brunocantisano/rpi-gradle/master/files/docker_paperinik_120x120.png)

This Docker container implements Gradle on Raspberry pi.
Only tested on Raspberry Pi 2

 * Raspbian base image: [resin/rpi-raspbian](https://hub.docker.com/r/resin/rpi-raspbian/)
 * gradle 2.0
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-gradle/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-gradle
```

# How to use this image

Use cases
----

1) Run a clean task with gradle in a binded data directory:
```bash
  docker run -it -v /media/usbraid/docker/gradle:/root/repos paperinik/rpi-gradle clean
```

2) Run a test with gradle with a binded data directory:
```bash
docker run -it -v /media/usbraid/docker/gradle:/root/repos paperinik/rpi-gradle test
```