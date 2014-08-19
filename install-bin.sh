#!/bin/bash

if [ ! $(id -u) -eq 0 ]; then
    sudo $0 $*
    exit
fi

DIR=$(dirname "$0")
if [ "$DIR" == "." ]; then
    DIR=$(pwd)
elif [ ! ${DIR:0:1} == "/" ]; then
    DIR=$(pwd)/$(dirname "$0")
fi

mkdir -p /usr/local/bin

for f in $DIR/bin/*; do
    ln -vfs $f /usr/local/bin/$(basename $f)
done

