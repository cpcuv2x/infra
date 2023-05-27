#!/bin/bash

# List of packages to install before building Janus
packagelist=(
    git
	wget
	nano
    aptitude
	libtool
	automake
	gtk-doc-tools
	cmake
	openssl 
	libssl-dev
	gpg
)

echo $SUDOPASS | sudo -S apt-get install -y ${packagelist[@]}
# sudo apt-get install ${packagelist[@]}

echo $SUDOPASS | sudo -S apt-get update 

packagelist2=(
	build-essential
	libmicrohttpd-dev
	libjansson-dev
	libnanomsg-dev
	# libsrtp2-dev
	meson
	ninja-build
	libnice-dev
	libssl-dev
	libsofia-sip-ua-dev
	libglib2.0-dev
	libopus-dev
	libogg-dev
	libcurl4-openssl-dev
	liblua5.3-dev
	libconfig-dev
	pkg-config
	gengetopt
)

echo $SUDOPASS | sudo -S aptitude install -y ${packagelist2[@]}
# sudo aptitude install ${packagelist2[@]}
