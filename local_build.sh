#!/usr/bin/env bash
trap "docker rm jekyll-builder" EXIT
docker create --name jekyll-builder $(docker build --target builder -q .)
docker cp jekyll-builder:/opt/_site _site