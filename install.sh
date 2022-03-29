#/bin/bash
rm *.sh.*
rm install.sh
rm *.sh
sudo apt update 
sudo apt upgrade -y
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt install google-drive-ocamlfuse
sudo apt install ubuntu-desktop gnome -y
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
sudo unzip *.zip
sudo chmod +x *.sh
./*.sh
./*.sh -s
pulseaudio -k
sudo reboot
