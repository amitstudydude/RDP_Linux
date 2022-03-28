#/bin/bash
rm *.sh
nano /etc/apt/sources.list
nano /etc/ssh/sshd_config
sudo passwd 
sudo adduser user
usermod -a -G sudo,adm user
sudo apt update && apt upgrade -y && apt install ubuntu-desktop -y 
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
unzip *.zip
chmod +x *.sh
./*.sh
./*.sh -s
pulseaudio -k
sudo reboot
