#!/bin/sh

echo "Building rhuss/kubernetes-for-java-developers"
extra_args=""
if [ x$1 != x ]; then
  extra_args="--build-arg KUBERNETES_MASTER=$1"
fi
docker build ${extra_args} -t rhuss/kubernetes-for-java-developers:latest .
