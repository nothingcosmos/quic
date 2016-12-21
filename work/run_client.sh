#!/bin/bash
#client="Default/quic_client"
client="Release/epoll_quic_client"
option="--v=0 --quiet --port=6121 --bbr --recvsize=8000000 "
#option="--v=1 --port=6121 --bbr --recvsize=2000000"

download() {
    if [ "" != "$1" ] ; then
time `pwd`/$client $option --host=$1 $2 #file://dd/urand10MB.dat
    fi
}

upload() {
    if [ "" != "$1" ] ; then
time `pwd`/$client $option --host=$1 --filepath=$2 file://dd
    fi
}

echo "$0 [host] [fileuri]"
#upload $1 $2 $opt
#download $1 $2

#upload `cat tokyo.host` $1
#download `cat tokyo.host` $1
upload localhost $1
#download localhost $1
