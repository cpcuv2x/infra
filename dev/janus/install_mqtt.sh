#!/bin/bash

# install_mqtt.sh
git clone https://github.com/eclipse/paho.mqtt.c.git
cd paho.mqtt.c

echo $SUDOPASS | sudo -S prefix=/usr make install
# sudo prefix=/usr make install
