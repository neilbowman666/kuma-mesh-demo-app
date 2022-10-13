#!/bin/sh

TEST_CONTAINER_NAME=$(cat ./definitions/TEST_CONTAINER_NAME)

docker stop "${TEST_CONTAINER_NAME}"
docker rm "${TEST_CONTAINER_NAME}"
