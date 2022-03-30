#/bin/bash
sudo rm *
sudo apt update 
sudo apt upgrade -y
clear
sudo apt install google-drive-ocamlfuse
clear
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./*.deb -y
clear
sudo apt install ubuntu-desktop gnome -y
clear
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
sudo unzip *.zip
bash ./*.sh
bash ./*.sh -s
sudo rm *
sudo apt install xrdp -y
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/after.sh
sudo reboot
