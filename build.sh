#! /bin/bash/
sudo rm *
sudo apt update
sudo apt upgrade -y
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
printf "y" | sudo bash *.sh -i
sudo rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/ui.sh
sudo reboot
