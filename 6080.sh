#!/bin/bash
startxfce4 &
x11vnc -forever -loop -rfbport 5900 -shared &
lt --port 6080 > nain.txt & 
cat nain.txt
bash 6080.sh
