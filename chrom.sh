#!/bin/bash
read -p "" CRP
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken ./*.deb && sudo rm *.deb *.deb.*    
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y   
clear
sudo apt install dbus-x11 -y    
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
sudo service chrome-remote-desktop start
