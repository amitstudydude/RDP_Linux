#!/bin/bash
sudo npm install -g localtunnel
sudo DEBIAN_FRONTEND=noninteractive apt install -y tzdata npm keyboard-configuration lightdm apt-utils xserver-xorg-video-dummy xserver-xorg-legacy x11vnc
sudo apt install xfce4 
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5900 --listen 6080 &
dpkg-reconfigure lightdm
startxfce4 &
x11vnc -rfbport 5900 -forever -bg -auth /var/run/lightdm/root/:0 -nopw -shared &
lt --port 8080 >> nail.txt & 
lt --port 6080 >> pin.txt & 
echo " cat nail.txt && cat pin.txt && sleep 2 && bash bash.sh " >> bash.sh 
bash bash.sh 

