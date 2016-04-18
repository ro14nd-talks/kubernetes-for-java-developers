#!/bin/sh

echo "Building rhuss/talk-kubernetes-2016-jax"
docker --tlsverify=false build -t rhuss/talk-kubernetes-2016-jax .
