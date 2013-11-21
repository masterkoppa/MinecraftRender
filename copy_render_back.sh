#!/bin/bash

if [ $# -eq 0 ]
then
        echo "No hostname provided"
        exit 1
fi

echo "Copying back the rendered map"

scp root@$1:/root/render.tar.gz /var/www/

echo "Copy done... Enjoy!"
