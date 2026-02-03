#!/usr/bin/env bash

set -euo pipefail

export DOCKER_BUILDKIT=1

image=$1

registry="cr-reg-cn-beijing.cr.volces.com"
username="lapluis"

docker build -t debian:${image} -f Dockerfile.${image} .
docker tag debian:${image}  ${registry}/${username}/debian:${image}
docker push ${registry}/${username}/debian:${image}
