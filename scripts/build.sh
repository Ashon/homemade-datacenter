#!/bin/bash

rm -rf build
mkdir build

docker-compose build bird-router
docker save bird-router -o build/bird-router.container
