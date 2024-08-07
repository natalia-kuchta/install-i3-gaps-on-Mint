#!/bin/bash

REPO_DIR=`dirname -- "$( readlink -f -- "$0"; )"`

#flameshot
sudo apt install flameshot

# rofi
sudo apt-get install -y rofi

#conky
sudo apt-get install -y conky-all

#dunst
sudo apt install -y dunst
# change wallpapers with feh and variety
sudo apt-get install -y feh

# notify demon
sudo apt-get install -y notify-osd

# to know what system you are on normally installed
sudo apt-get install -y lsb-release

# variety
sudo apt-get install -y variety

#https://github.com/vivien/i3blocks
if hash i3blocks 2>/dev/null; then
        echo "i3blocks is already installed"
else

        rm -rf /tmp/i3blocks
        git clone https://github.com/vivien/i3blocks.git /tmp/i3blocks
        cd /tmp/i3blocks
    ./autogen.sh
    ./configure
        make
        sudo make install
        rm -rf /tmp/i3blocks

fi

sudo apt install -y i3status
sudo apt install -y suckless-tools

##############################
# INSTALL PICOM
##############################
sudo apt install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev -y

rm -rf /tmp/picom
git clone https://github.com/yshui/picom /tmp/picom && cd /tmp/picom || exit 1

meson setup --buildtype=release build
ninja -C build
sudo ninja -C build install
cd /
rm -rf /tmp/picom

##############################
# INSTALL POLYBAR
##############################

sudo apt install libuv1-dev
pip install -U sphinx

rm -rf /tmp/polybar
git clone https://github.com/polybar/polybar /tmp/polybar

cd /tmp/polybar || exit 1

./build.sh
cd /
rm -rf /tmp/polybar

##############################
# INSTALL ALTERNATING LAYOUT
##############################
sudo apt-get install python3-pip
pip3 install i3ipc

cd "${REPO_DIR}/config/" || exit 1
rm -rf "${REPO_DIR}/config/i3-alternating-layout"
git clone https://github.com/olemartinorg/i3-alternating-layout
rm -rf "${REPO_DIR}/config/i3-alternating-layout/.git"