#!/bin/bash
#read -p "" CRP
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo apt update
clear
sudo apt install dbus-x11 -y && clear
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y && clear
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/GDrive.sh https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
sudo apt install xfce4 xfce4-goodies -y && clear
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
sudo apt install xrdp -y && clear
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
#sudo apt install gnome -y
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
sudo apt install firefox -y
#sudo apt install firefox-esr -y
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
#wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
#bash Loop.sh
rm *.deb *.deb.*
clear
