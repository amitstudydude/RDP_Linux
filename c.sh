#!/bin/bash
read -p "" CRP
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
sudo apt install --assume-yes --fix-broken ./*.deb && sudo rm *.deb *.deb.*    
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y   
clear
sudo apt install dbus-x11 -y    
clear
#sudo apt install xfce4 xfce4-goodies -y
clear
sudo apt install ubuntu-desktop -y
clear
sudo apt install firefox -y
clear
sudo bash Loop.sh

