#!/bin/bash

mkdir -p cache/dd && pushd cache/dd
dd if=/dev/urandom of=urand1MB.dat bs=1K count=1024
dd if=/dev/urandom of=urand10MB.dat bs=10K count=1024
dd if=/dev/urandom of=urand100MB.dat bs=100K count=1024
dd if=/dev/urandom of=urand1GB.dat bs=1M count=1024
popd
