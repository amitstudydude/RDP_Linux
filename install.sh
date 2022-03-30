#! /bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt install ubuntu-desktop gnome xrdp -y && sudo service gdm3 stop && sudo bash ui.sh
