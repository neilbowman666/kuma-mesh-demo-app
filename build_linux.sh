#!/bin/bash

rm -rf ./bin/
go build -o ./bin/demo

VERSION=$(cat ./VERSION)

docker rmi okeyja/kuma-mesh-demo-app:"${VERSION}"
docker rmi okeyja/kuma-mesh-demo-app:latest

docker build . -t okeyja/kuma-mesh-demo-app:"${VERSION}"
docker build . -t okeyja/kuma-mesh-demo-app:latest

#docker push okeyja/kuma-mesh-demo-app:"${VERSION}"
#docker push okeyja/kuma-mesh-demo-app:latest
