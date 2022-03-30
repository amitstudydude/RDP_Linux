#! /bin/bash/
sudo rm *.sh
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
printf "y" | sudo bash *.sh -i
sudo rm *.sh
sudo apt update
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/ui.sh
sudo reboot
