#!/bin/bash
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
rm ./*.sh
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Install.sh
