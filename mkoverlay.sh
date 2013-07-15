#!/bin/bash

NAME=$1
DIR=$2

if [ $# -ne 2 ]
    then
        echo "Wrong parameter count. Aborting now..."
        exit 1
fi

dd if=/dev/zero of=/home/jamuelle/overlays/$NAME bs=1k count=30000

#get the number of already mounted loop devices

NEXTLOOP=`sudo /sbin/losetup -a | wc -l`

sudo /sbin/losetup /dev/loop$NEXTLOOP /home/jamuelle/overlays/$NAME

sudo /sbin/mke2fs /dev/loop$NEXTLOOP

sudo mkdir /media/$NAME

sudo mount /dev/loop$NEXTLOOP /media/$NAME

sudo cp -r $DIR/*  /media/$NAME

sudo mount /dev/loop$NEXTLOOP $DIR


