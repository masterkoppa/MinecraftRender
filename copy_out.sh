#!/bin/sh
if [ $# -eq 0 ] 
then
	echo "No hostname provided"
	exit 1
fi

echo "Copying out to $1"

scp -r /home/andres/overviewer_automated root@$1:/tmp

echo "Copy successful"

echo "Running build"

ssh root@$1 time /tmp/overviewer_automated/build_map.sh

