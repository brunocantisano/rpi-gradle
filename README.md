# rpi-gradle => base image: paperinik/rpi-java8
Gradle 2.0 on Raspberry pi with docker

Only tested on Raspberry Pi 2
```
docker run paperinik/rpi-gradle -v /media/usbraid/docker/gradle:/root/repos gradle clean
