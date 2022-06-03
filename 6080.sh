#!/bin/bash
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5900 --listen 6080 
startxfce4 &
x11vnc -forever -loop -rfbport 5900 -shared &
lt --port 6080 > nain.txt & 
cat nain.txt
bash 6080.sh
