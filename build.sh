#!/usr/bin/env bash

if [[ "$(uname -m)" != "armv7l" ]]; then
  echo "Only do this on a Raspberry Pi!"
  exit 1
fi

image="nexus.neer.se/repository/neerdoc/netboot.xyz:3.11"

docker build -f Dockerfile.armhf -t ${image} .
docker push ${image}
