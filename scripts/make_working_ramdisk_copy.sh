#!/bin/sh
if test "$1" = ""; then
	source="froyo-i9000xxjpu"
else
	source=$1
fi

if test -d working-copy; then
	echo "Warning: working initramfs copy already exist"
fi
cp -a $source working-copy
