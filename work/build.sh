#!/bin/bash
pushd ../proto-quic
export PROTO_QUIC_ROOT=`pwd`
export PATH=${PROTO_QUIC_ROOT}/depot_tools:$PATH
outpath="out/Release"
gnopt="--args=is_debug=false"
list="quic_client quic_server epoll_quic_client epoll_quic_server"

if [ ! -f proto_quic_tools/sync ] ; then
  ./proto_quic_tools/sync.sh
  echo sync >> proto_quic_tools/sync
fi

pushd ${PROTO_QUIC_ROOT}/src
for out in $outpath; do
  gn gen $out $gnopt && ninja -C $out $list
done
popd
popd
