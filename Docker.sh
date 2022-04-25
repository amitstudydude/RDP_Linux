#!/bin/bash
docker pull ubuntu
docker run -it ubuntu
sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo usermod -a -G sudo,adm user
apt update && apt install wget sudo -y
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list
sudo cat sources.list >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
sudo apt update
clear
#sudo apt install xfce4 xfce4-goodies -y
clear
sudo apt install ubuntu-desktop -y
clear
sudo apt install firefox -y
clear
