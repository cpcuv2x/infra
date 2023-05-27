#!/bin/bash

# Compiling the Janus Gateway
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
sh autogen.sh 
./configure
make
echo $SUDOPASS | sudo -S make install 
echo $SUDOPASS | sudo -S make configs
# sudo make install 
# sudo make configs


