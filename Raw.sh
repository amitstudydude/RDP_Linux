#!/bin/bash
#read -p "" CRP
wget https://github.com/amitstudydude/RDP_Linux/blob/main/mozilla.7z
mv ./mozilla.7z ./home/$(whoami)/
printf "123456\n123456" | eval $CRP 
sudo apt update
sudo apt install dbus-x11 -y
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop restart
DEBIAN_FRONTEND=noninteractive apt install xfce4 xfce4-goodies -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
sudo apt install xrdp -y 
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
#sudo apt install gnome -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
sudo apt install firefox -y
sudo apt install firefox-esr -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
clear
