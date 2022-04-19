#!/bin/bash
read -p " -pin=123456 " CRP
rm *.sh
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
su user
cd
eval $CRP 
cd /workspace/*/
sudo service chrome-remote-desktop start
sudo apt install firefox -y
sudo apt install xfce4 -y 
sudo apt install ubuntu-desktop  -y 
sudo apt install gnome  -y
sudo apt upgrade -y
sleep 11d
