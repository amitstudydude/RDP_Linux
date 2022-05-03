#! /bin/bash
clear
sudo rm Loop.sh
sudo service chrome-remote-desktop start
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh

sudo systemctl start chrome-remote-desktop@$USER
sleep 3
bash Loop.sh
clear
