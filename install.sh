#/bin/bash
rm *.sh.*
rm install.sh
rm *.sh
sudo apt update 
sudo apt upgrade -y
sudo apt install ubuntu-desktop gnome -y
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
sudo unzip *.zip
sudo chmod +x *.sh
./*.sh
./*.sh -s
pulseaudio -k
sudo reboot
