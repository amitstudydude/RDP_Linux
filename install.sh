#! /bin/bash
sudo apt update || wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/build.sh https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/ui.sh || sudo apt upgrade -y && sudo apt install ubuntu-desktop gnome xrdp -y || sudo service gdm3 stop || sudo bash *.sh
