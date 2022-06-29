#!/bin/sh

echo "Update & upgrade"
apt update -y
apt upgrade -y

echo "Install MATE desktop environment"
apt install ubuntu-mate-desktop -y
apt install mate-desktop-environment-extras -y

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

echo "Install tlp & tlpUI"
sudo add-apt-repository ppa:linrunner/tlp
sudo add-apt-repository ppa:linuxuprising/apps
sudo apt update
sudo apt install tlp tlptlp-rdw -y
sudo apt install tlpui -y

sudo add-apt-repository ppa:slimbook/slimbook
sudo apt update
sudo apt install slimbookbattery

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
#echo "Install Parrot theme"
#git clone https://github.com/ParrotSec/parrot-themes
#cd parrot-themes
#cp -r icons/ themes/  /usr/share 

