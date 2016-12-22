#!/bin/bash

pushd proto-quic
git diff > ../proto-quic.patch
popd
