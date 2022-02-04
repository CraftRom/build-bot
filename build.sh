#!/bin/bash

cd ~

if mkdir craftrom && cd craftrom; then
  repo init -u https://github.com/CraftRom/kernel -b nightly
  repo sync
  for dev in onclite surya; do
    mkdir -p chidori/$dev
    (
    cd $chidori/$dev 
    bash build.sh -n -t
    )
  done
fi