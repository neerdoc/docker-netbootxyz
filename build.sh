#!/usr/bin/env bash

image="nexus.neer.se/repository/neerdoc/netboot.xyz:3.11"

docker build -f Dockerfile.armhf -t ${image} .
docker push ${image}
