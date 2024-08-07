#!/bin/bash

echo "##################################"
echo "INSTALL I3"
echo "##################################"

rm -rf /tmp/i3

git clone https://github.com/i3/i3.git /tmp/i3

cd /tmp/i3

# compile & install
mkdir -p build && cd build
meson ..
ninja
sudo ninja install

rm -rf /tmp/i3

echo "You installed the following version"
echo
echo
i3 --version

