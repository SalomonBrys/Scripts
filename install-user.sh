#!/bin/bash

DIR=$(dirname "$0")
if [ "$DIR" == "." ]; then
    DIR=$(pwd)
elif [ ! ${DIR:0:1} == "/" ]; then
    DIR=$(pwd)/$(dirname "$0")
fi

for f in $DIR/homedot/*; do
    ln -vfs $f $HOME/.$(basename $f)
done

if [ -d $HOME/.kde4/share/kde4/services ]; then
    for f in protocol/*; do
	ln -vfs "$DIR/$f" $HOME/.kde4/share/kde4/services/$(basename $f)
    done
fi

if [ "$1" == "" ]; then
    /bin/echo -n "Please input your full name: "
    read name
else
    name="$1"
fi

if [ "$2" == "" ]; then
    /bin/echo -n "Please input your email address: "
    read email
else
    email="$2"
fi

echo "Git User: $name <$email>"

cat <<EOF > ~/.gituser
[user]
	name = $name
	email = $email
EOF
