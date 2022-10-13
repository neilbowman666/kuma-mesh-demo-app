#!/bin/sh

IMAGE_VERSION=$(cat ./definitions/IMAGE_VERSION)
IMAGE_NAME=$(cat ./definitions/IMAGE_NAME)

TEST_CONTAINER_NAME=$(cat ./definitions/TEST_CONTAINER_NAME)

docker stop "${TEST_CONTAINER_NAME}"
docker rm "${TEST_CONTAINER_NAME}"

docker run -d --name "${TEST_CONTAINER_NAME}" -p 8080:8080 "${IMAGE_NAME}:${IMAGE_VERSION}"
