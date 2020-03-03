#!/bin/sh
docker build . -t complete
mkdir -p build
docker run --rm --entrypoint cat complete  /home/application/function.zip > build/function.zip

sam local start-api -t sam.yaml -p 3000

