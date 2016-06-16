#!/bin/sh
echo "Starting presentation"

docker run -it --rm \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v $(pwd)/m2:/root/.m2 \
      -v $(pwd)/slides:/slides \
      -v $(pwd)/demo:/demo \
      -e MAVEN_OPTS="-Ddocker.host.address=127.0.0.1" \
      -p 9000:9000 -p 57575:57575 -p 35729:35729 -p 8001:8001 -p 8080:8080 \
      rhuss/talk-kubernetes-2016:jbcnf $*

#      -v $(pwd)/m2:/root/.m2 \

