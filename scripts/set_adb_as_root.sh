#!/bin/sh
if test -d "$1"; then
	echo "modifying default.prop"
	cd $1
	sed s/secure=1/secure=0/g default.prop > /tmp/foo
	sed s/persist.service.adb.enable=0/persist.service.adb.enable=1/g /tmp/foo > default.prop
else
	echo "please specify a ramdisk directory"
fi
