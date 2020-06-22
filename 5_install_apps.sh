# !/bin/bash
#install APPS
#VIM
echo "installing VIM..."
sudo apt install vim

#telegram
echo "installing Telegram-desctop..."
sudo snap install telegram-desktop

echo "################################################################"
echo "###################    telegram-desktop installed #################"
echo "################################################################"

#postman
echo "installing Postman..."
sudo snap install postman

echo "################################################################"
echo "###################    Postman installed #################"
echo "################################################################"

#chrome
rm /tmp/google-chrome-stable_current_amd64.deb

echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb

echo "installing google-chrome ..."
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

rm /tmp/google-chrome-stable_current_amd64.deb

echo "################################################################"
echo "###################    google chrome installed #################"
echo "################################################################"
