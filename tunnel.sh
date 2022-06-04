#!/bin/bash
sudo npm install -g localtunnel
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5900 --listen 6080 &
startxfce4 &
x11vnc -rfbport 5900 -forever -loop -shared &
lt --port 8080 >> nail.txt & 
lt --port 6080 >> pin.txt & 
echo " cat nail.txt && cat pin.txt && sleep 2 && bash bash.sh " >> bash.sh 
bash bash.sh
