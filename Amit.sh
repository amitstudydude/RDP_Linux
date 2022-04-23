#!/bin/bash
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
sudo apt install firefox xfce4 -y
cd && sudo su user
sudo service chrome-remote-desktop start && sudo apt upgrade -y


ngrok


wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip *.zip && ./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj && echo https://dashboard.ngrok.com/cloud-edge/endpoints && ./ngrok tcp 3389    

sudo apt upgrade --allow-change-held-packages 



sudo rm /etc/apt/sources.list /etc/hostname /etc/hosts
sudo rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/hostname https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/hosts https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list
sudo mv sources.list /etc/apt
sudo mv hostname /etc/hostname
sudo mv hosts /etc/hosts
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
sudo apt update
