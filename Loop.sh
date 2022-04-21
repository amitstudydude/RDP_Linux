#! /bin/bash
clear
rm Loop.sh
printf "123456\n123456" | eval $CRP 
sudo service chrome-remote-desktop start
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
bash Loop.sh
clear
