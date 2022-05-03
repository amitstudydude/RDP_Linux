#!/bin/bash
rm *.zip ngrok
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 
unzip *.zip
#amitstudydude
./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj
echo https://dashboard.ngrok.com/cloud-edge/endpoints 
sudo service chrome-remote-desktop start
sudo systemctl start chrome-remote-desktop@USER
bash loop2.sh
