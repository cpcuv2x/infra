#!/bin/bash
packagelist=(
	gstreamer1.0-plugins-base 
	gstreamer1.0-plugins-good 
	gstreamer1.0-plugins-bad 
	gstreamer1.0-plugins-ugly 
	gstreamer1.0-libav
	libgstreamer1.0-dev
)

echo $SUDOPASS | sudo -S apt-get install -y ${packagelist[@]}
# apt-get install -y ${packagelist[@]}