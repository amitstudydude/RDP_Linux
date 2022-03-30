#/bin/bash/
rm *
yes root | sudo passwd 
#sudo nano /etc/apt/sources.list
#sudo nano /etc/ssh/sshd_config
yes root | sudo adduser root
sudo usermod -a -G sudo,adm root
sudo apt --fix-broken install -y
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt update 
clear
#! /bin/bash
sudo rm *
sudo apt install google-drive-ocamlfuse
clear
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./*.deb -y
clear
sudo apt install ubuntu-desktop -y
clear
sudo apt install gnome xrdp -y
clear
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
sudo unzip *.zip
bash ./*.sh
bash ./*.sh -s
sudo rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/after.sh
sudo poweroff

