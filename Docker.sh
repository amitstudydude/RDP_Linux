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
clear
sudo apt install xfce4 xfce4-goodies -y
clear
#sudo apt install ubuntu-desktop -y
clear
sudo apt install firefox -y
clear
