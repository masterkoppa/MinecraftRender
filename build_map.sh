#!/bin/sh

# Install dependencies
apt-get install -y python-imaging python-numpy

# Install overviewer
dpkg -i /tmp/overviewer_automated/permanent_files/overviewer.deb

# Make render directory
mkdir -p /root/render

# Render the map based on the config, save logs to overviewer.log
overviewer.py -c /tmp/overviewer_automated/permanent_files/overviewer.conf
