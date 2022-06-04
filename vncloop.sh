#! /bin/bash
sleep 300
sudo npm install -g localtunnel
sudo DEBIAN_FRONTEND=noninteractive apt install -y tzdata npm keyboard-configuration lightdm apt-utils xserver-xorg-video-dummy xserver-xorg-legacy x11vnc
sudo apt install xfce4 
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5900 --listen 6080 &
dpkg-reconfigure lightdm
startxfce4 &
x11vnc -rfbport 5900 -forever  -auth /var/run/lightdm/root/:0  -shared -nopw &
lt --port 8080 >> nail.txt & 
lt --port 6080 >> pin.txt & 
sleep 300
bash vncloop.sh
