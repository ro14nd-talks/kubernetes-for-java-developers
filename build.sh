#!/bin/sh

tag=$(git rev-parse --abbrev-ref HEAD)
echo "Building rhuss/kubernetes-for-java-developers:${tag}"
if [ ! -f kubeconfig ]; then
  touch kubeconfig
fi
docker build --build-arg pdf=$(ls kubernetes*.pdf) -t rhuss/kubernetes-for-java-developers:${tag} .
sed -i.bak "s/^tag=.*$/tag=${tag}/" run-container.sh
rm run-container.sh.bak
