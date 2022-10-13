#!/bin/bash

IMAGE_VERSION=$(cat ./definitions/IMAGE_VERSION)
IMAGE_NAME=$(cat ./definitions/IMAGE_NAME)

docker stop "${TEST_CONTAINER_NAME}"
docker rm "${TEST_CONTAINER_NAME}"

docker rmi "${IMAGE_NAME}:${IMAGE_VERSION}"
docker rmi "${IMAGE_NAME}:latest"

docker build . -t "${IMAGE_NAME}:${IMAGE_VERSION}"
docker build . -t "${IMAGE_NAME}:latest"

docker push "${IMAGE_NAME}:${IMAGE_VERSION}"
docker push "${IMAGE_NAME}:latest"
