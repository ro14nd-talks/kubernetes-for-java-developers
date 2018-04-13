#!/bin/bash

for i in 0 1 2 3
do
  echo "================== Building on n${i} ========================"
  export DOCKER_HOST=tcp://n${i}:2375
  unset DOCKER_TLS_VERIFY
  mvn -Dfabric8.generator.from="rhuss/rpi-java-run" clean install fabric8:build
done
