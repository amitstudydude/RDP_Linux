#!/bin/bash
#docker pull ubuntu
#docker run -it ubuntu

apt update && apt install wget sudo -y 
useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
usermod -a -G sudo,adm user
DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y   
clear
apt install dbus-x11 -y
clear
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
sudo apt install --assume-yes --fix-broken ./*.deb  
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y   
clear
sudo apt install dbus-x11 -y    
sudo apt update
sudo apt install dbus-x11 -y
clear
sudo apt install apt-transport-https curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y
clear
sudo apt install xfce4 xfce4-goodies -y
clear
#sudo apt install ubuntu-desktop -y
clear
sudo apt install firefox -y
clear
