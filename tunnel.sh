#!/bin/bash
sudo npm install -g localtunnel
sudo DEBIAN_FRONTEND=noninteractive apt install -y tzdata npm keyboard-configuration lightdm apt-utils xserver-xorg-video-dummy xserver-xorg-legacy x11vnc  > /dev/null 2>&1
sudo apt install xfce4 > /dev/null 2>&1
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5900 --listen 6080 &
startxfce4 &
x11vnc -rfbport 5900 -forever -loop -shared &
lt --port 8080 >> nail.txt & 
lt --port 6080 >> pin.txt & 
echo " cat nail.txt && cat pin.txt && sleep 2 && bash bash.sh " >> bash.sh 
bash bash.sh &
echo " bash tunnel.sh && sleep 60 && bash vncloop.sh " > vncloop.sh
bash vncloop.sh
