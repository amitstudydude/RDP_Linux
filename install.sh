#! /bin/bash
sudo apt update || wget https://download.nomachine.com/download/7.9/Linux/nomachine_7.9.2_1_amd64.deb || sudo apt install *.deb -y || sudo apt upgrade -y && sudo apt install ubuntu-desktop gnome xrdp -y || sudo service gdm3 stop || sudo bash ui.sh
