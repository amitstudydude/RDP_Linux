#! /bin/bash
clear
sudo service chrome-remote-desktop start
sudo systemctl start chrome-remote-desktop@$USER
sleep 2
bash Loop.sh
clear
