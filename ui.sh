#/bin/bash/
rm *
sudo service gdm3 stop
sudo systemctl disable gdm3 service
sudo dpkg --configure -a
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
wget https://www.c-nergy.be/downloads/xrdp-installer-1.2.2.zip 
sudo unzip *.zip
bash ./*.sh
bash ./*.sh -s
sudo rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/after.sh
sudo reboot

