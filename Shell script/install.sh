#!/bin/sh

echo "Update & upgrade"
apt update -y
apt upgrade -y

echo "Install git"
apt install git -y

echo "Install zshell"
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install tilix terminal"
apt install tilix -y

echo "Install lolcat rainbow terminal"
apt install lolcat -y

echo "Install MS core fonts"
apt install ttf-mscorefonts-installer -y

echo "Install Java"
sudo apt install default-jre
sudo apt install default-jdk

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

