#!/bin/bash
read -p "" CRP
printf "123456\n123456" | eval $CRP 
sudo apt update
clear
sudo apt install dbus-x11 -y && clear
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y && clear
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/GDrive.sh https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo rm *.deb *.deb.*
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
sudo user && printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
sudo rm /etc/init.d/gdm3
sudo apt install xfce4 xfce4-goodies -y && clear
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
sudo apt install xrdp -y && clear
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
#sudo rm /etc/init.d/lightdm
#sudo apt install ubuntu-desktop gnome -y
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
sudo apt install firefox -y
sudo apt install firefox-esr -y
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop restart
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/m.7z https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
bash Loop.sh
clear
