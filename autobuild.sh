#!/bin/bash

sudo make clean
sudo ./build-vyos-image iso \
  --architecture amd64 \
  --build-type release \
  --version mtak-`date +"%Y%m%d"` \
  --build-by "merijntje@tak.io"

# chown everything to mtak
sudo chown -R 1000:1000 .

