#!/bin/bash

# install_libnice.sh
git clone https://gitlab.freedesktop.org/libnice/libnice
cd libnice
meson --prefix=/usr build && ninja -C build

echo $SUDOPASS | sudo -S ninja -C build install
# sudo ninja -C build install
