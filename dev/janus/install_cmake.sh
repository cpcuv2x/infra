#!/bin/bash

wget https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-x86_64.tar.gz
tar xfv cmake-3.26.4-linux-x86_64.tar.gz
cd cmake-3.26.4-linux-x86_64
./configure
echo $SUDOPASS | sudo -S make
echo $SUDOPASS | sudo -S make install

# wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
# echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ focal main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null

# echo $SUDOPASS | sudo -S rm /usr/share/keyrings/kitware-archive-keyring.gpg
# echo $SUDOPASS | sudo -S apt-get install -y kitware-archive-keyring

# echo $SUDOPASS | sudo -S apt-get update
# echo $SUDOPASS | sudo -S apt-get install -y cmake