#!/bin/bash
echo "Creating slides.pdf"
echo "(Don't forget to start the presentation before)"
target="$(pwd)/slides.pdf"
pushd ../tools/decktape
./phantomjs decktape.js reveal -s 1280x720 --load 200 http://localhost:9000 $target
popd
