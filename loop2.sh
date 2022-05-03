#!/bin/bash
sudo apt install tmate obconf -y
sudo apt remove obconf -y
sudo service chrome-remote-desktop start
sudo systemctl start chrome-remote-desktop@USER
bash loop2.sh
