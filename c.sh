#!/bin/bash
read -p "" CRP
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken ./*.deb
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo apt install --assume-yes --fix-broken ./*.deb
sudo useradd -m user && yes user | sudo passwd user && sudo usermod -a -G sudo,adm,chrome-remote-desktop user
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --user-name="user" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux -pin=123456
sudo service chrome-remote-desktop start
sudo systemctl start chrome-remote-desktop@USER 
