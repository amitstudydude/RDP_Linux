#!/bin/bash
apt update && apt install wget sudo -y
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/user.sh https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/chrome.sh
sudo cat sources.list >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
sudo apt update
clear
#sudo apt install xfce4 xfce4-goodies -y
sudo apt install ubuntu-desktop -y
sudo apt install firefox -y
bash chrome.sh
clear
