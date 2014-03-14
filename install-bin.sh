#!/bin/sh

if [ ! $(id -u) -eq 0 ]; then
    sudo $0 $*
    exit
fi

DIR=$(dirname "$0")
if [ "$DIR" == "." ]; then
    DIR=$(pwd)
else
    DIR=$(pwd)/$(dirname "$0")
fi

mkdir -p /usr/local/bin

for f in bin/*; do
    ln -vfs "$DIR/$f" /usr/local/bin/$(basename $f)
done

