#/bin/bash
server="Release/epoll_quic_server"
option="--v=1 --quiet --quic_response_cache_dir=`pwd`/cache2 --certificate_file=certs/out/leaf_cert.pem --key_file=certs/out/leaf_cert.pkcs8 --recvsize=8000000"

echo "run $server $option"
`pwd`/$server $option
