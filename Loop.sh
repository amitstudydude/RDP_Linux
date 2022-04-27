#! /bin/bash
clear
sudo rm Loop.sh
printf "123456\n123456" | eval $CRP 
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
sudo service chrome-remote-desktop start
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
sudo systemctl start chrome-remote-desktop@$USER
bash Loop.sh
clear
