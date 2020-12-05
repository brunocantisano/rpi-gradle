.PHONY: all build push test

DOCKER_IMAGE_NAME=paperinik/rpi-gradle:6.7.1

all: build

build:
	docker build -t $(DOCKER_IMAGE_NAME) .

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_NAME) /bin/echo "Success."
