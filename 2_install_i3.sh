# !/bin/bash/

echo "##################################"
echo "INSTALL I3"
echo "##################################"

rm -rf /tmp/Airblader

git clone https://github.com/Airblader/i3.git /tmp/Airblader

cd /tmp/Airblader

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers

make && sudo make install

rm -rf /tmp/Airblader

echo "You installed the following version"
echo
echo
i3 --version

