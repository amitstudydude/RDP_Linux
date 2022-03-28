#/bin/bash
rm *.sh
sudo passwd 
sudo adduser user
usermod -a -G sudo,adm user
sudo apt update && apt upgrade -y && apt install ubuntu-desktop -y 
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
sudo unzip *.zip
sudo chmod +x *.sh
./*.sh
./*.sh -s
pulseaudio -k
sudo nano /etc/apt/sources.list
sudo nano /etc/ssh/sshd_config
sudo reboot
