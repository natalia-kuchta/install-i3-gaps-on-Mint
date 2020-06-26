# !/bin/bash
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

# transparency of non active window
#sudo apt-get install -y compton

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
# INSTALL COMPTON TRYON144 
##############################
sudo apt install libx11-dev xsltproc libxml2-dev docbook-xsl libgl1-mesa-dev libxcomposite-dev libxdamage-dev libxfixes-dev libxext-dev libxrender-dev libxrandr-dev libxinerama-dev pkg-config make x11proto-core-dev x11-utils libpcre3 libpcre3-dev libconfig-dev libdrm-dev libgl1-mesa-glx libdbus-1-dev asciidoc -y

git clone https://github.com/tryone144/compton.git && cd $dir/compton

sudo make
sudo make install
##############################
# INSTALL POLYBAR
##############################

git clone https://github.com/jaagr/polybar.git

cd polybar

./build.sh


##############################
# INSTALL ALTERNATING LAYOUT 
##############################
sudo apt-get install python3-pip
pip3 install i3ipc
cd config/
git clone https://github.com/olemartinorg/i3-alternating-layout
