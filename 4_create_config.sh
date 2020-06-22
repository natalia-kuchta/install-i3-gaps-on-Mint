# !/bin/bash/

if ! [ -d  ~/.local/share/fonts]; then
        mkdir ~/.local/share/fonts
fi

cp fonts/* ~/.local/share/fonts

fc-cache -v

if ! [ -d  ~/.config/i3]; then
        mkdir ~/.config/i3
fi

cp -r config/* ~/.config/i3
cp -r polybar ~/.config
