#!/bin/sh

VERSION=$(cat ./VERSION)

docker stop kuma-mesh-demo-app
docker rm kuma-mesh-demo-app

docker run --name kuma-mesh-demo-app -p 8080:8080 okeyja/kuma-mesh-demo-app:"${VERSION}"