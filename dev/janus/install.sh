#!/bin/bash

SUDOPASS=11111111

echo $SUDOPASS | sudo -S apt-get update 

chmod +x ./install_dependencies.sh
# chmod +x ./install_cmake.sh
chmod +x ./install_libnice.sh
chmod +x ./install_libsrtp.sh
chmod +x ./install_usrsctp.sh
chmod +x ./install_libwebsockets.sh
chmod +x ./install_mqtt.sh
# chmod +x ./install_gstreamer.sh
sed -i -e 's/\r$//' install_janus.sh
chmod +x ./install_janus.sh

export SUDOPASS
./install_dependencies.sh
# ./install_gstreamer.sh
# ./install_cmake.sh
./install_libnice.sh
./install_libsrtp.sh
./install_usrsctp.sh
./install_libwebsockets.sh
./install_mqtt.sh
./install_janus.sh

echo $SUDOPASS | sudo -S mkdir /usr/share/janus
echo $SUDOPASS | sudo -S mkdir /usr/share/janus/recordings
echo $SUDOPASS | sudo -S touch /usr/share/janus/recordings/janus.log

echo $SUDOPASS | sudo -S cp ./janus.jcfg /usr/local/etc/janus
echo $SUDOPASS | sudo -S cp ./janus.transport.http.jcfg /usr/local/etc/janus