#!/bin/sh
if test "$1" = ""; then
	source="froyo-xxjpm"
else
	source=$1
fi

if test -d working-copy; then
	echo "Warning: working ramdisk copy already exist"
fi
cp -a $source working-copy
