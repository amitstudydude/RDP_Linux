#! /bin/bash/
sudo rm *.sh
sudo dpkg --configure -a
sudo apt update && sudo apt upgrade -y
sudo apt install ubuntu-desktop gnome xrdp -y
wget https://download.nomachine.com/download/7.9/Linux/nomachine_7.9.2_1_amd64.deb https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
printf "y" | sudo bash *.sh -i
sudo apt install *.deb
sudo rm *.sh
#wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/ui.sh
sudo reboot
