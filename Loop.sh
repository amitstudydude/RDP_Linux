#! /bin/bash
clear
sudo service chrome-remote-desktop start
sudo systemctl start chrome-remote-desktop@$USER
bash Loop.sh
clear
