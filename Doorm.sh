#!/bin/bash
read -p "" CRP
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Gdrive.sh https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/M.7z
printf "123456\n123456" | eval $CRP 
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y
rm *.deb.* *.deb
sudo apt update
sudo apt install dbus-x11 -y
clear
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
clear
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop restart

sudo apt install xfce4 -y
clear
sudo apt install xfce4-goodies -y
clear
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop restart
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
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Raw.sh
bash Raw.sh
rm Raw.sh
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
bash Loop.sh
clear
