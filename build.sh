#!/bin/sh

tag=$(git rev-parse --abbrev-ref HEAD)
echo "Building rhuss/kubernetes-for-java-developers:${tag}"
extra_args=""
if [ x$1 != x ]; then
  extra_args="--build-arg KUBERNETES_MASTER=$1"
fi
docker build ${extra_args} --build-arg pdf=$(ls kubernetes*.pdf) -t rhuss/kubernetes-for-java-developers:${tag} .
sed -i.bak "s/^tag=.*$/tag=${tag}/" run-container.sh
rm run-container.sh.bak
