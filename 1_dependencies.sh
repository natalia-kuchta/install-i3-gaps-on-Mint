#!/bin/bash
set -e

#
#
######################################
######################################
#
# INSTALL START DEPENDENCIES
#
######################################
######################################

echo "------------------------------"
echo "dependencies for i3 with gaps"
echo "-----------------------------"

sudo apt-get install -y autoconf
sudo apt-get install -y automake
sudo apt-get install -y build-essential
sudo apt-get install -y libtool
sudo apt-get install -y xutils-dev xcb libxcb-composite0-dev
sudo apt-get install -y doxygen
sudo apt-get install -y g++

sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libjsoncpp-dev

sudo apt-get install -y libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev

sudo apt-get install cmake cmake-data libcairo2-dev  libxcb-ewmh-dev  libxcb-image0-dev  pkg-config python3-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-ewmh2 i3lock-fancy

echo "##################################"
echo "INSTALL XCB"
echo "##################################"

rm -rf /tmp/xcb-util-xrm
git clone --recursive https://github.com/Airblader/xcb-util-xrm.git /tmp/xcb-util-xrm
cd /tmp/xcb-util-xrm
git submodule update --init
sh /tmp/xcb-util-xrm/autogen.sh --prefix=/usr
make && sudo make install

rm -rf /tmp/xcb-util-xrm

echo
echo
echo "#########################################"
echo "dependencies for i3 with gaps installed"
echo "#########################################"
sleep 1

