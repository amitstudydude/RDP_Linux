#!/bin/bash
read -p "" CRP
printf "123456\n123456" | eval $CRP 
clear
rm *.sh *.deb *.deb.* 
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
sudo apt install xfce4 -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
sudo apt install xrdp -y 
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
#sudo apt install gnome -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
sudo apt install firefox firefox-esr -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
pulseaudio -k
pulseaudio
rm *.sh *.deb *.deb.* 
clear
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
sudo apt install xfce4 -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
sudo apt install xrdp -y 
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
#sudo apt install gnome -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
sudo apt install firefox firefox-esr -y
printf "123456\n123456" | eval $CRP
sudo service chrome-remote-desktop start
pulseaudio -k 
pulseaudio
rm *.sh *.deb *.deb.* 
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
bash *.sh
clear
