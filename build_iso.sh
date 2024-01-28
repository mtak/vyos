#!/bin/bash

# Instructions from https://docs.vyos.io/en/latest/contributing/build-vyos.html

version=sagitta

docker pull vyos/vyos-build:${version}

git clone -b ${version} --single-branch https://github.com/vyos/vyos-build

cp autobuild.sh vyos-build/

cd vyos-build

time docker run --rm -it --privileged -v $(pwd):/vyos -w /vyos vyos/vyos-build:${version} ./autobuild.sh

cd ..

mv vyos-build/build/vyos-mtak-*.iso .

rm -rf vyos-build/
