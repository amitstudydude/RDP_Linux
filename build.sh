#! /bin/bash/
sudo apt update
sudo apt upgrade -y
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
printf "y" | sudo bash *.sh -i
rm *
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
sudo reboot
