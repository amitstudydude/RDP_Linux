#!/bin/bash
sudo npm install -g localtunnel
lt --port 8080 >> nail.txt & 
lt --port 6080 >> pin.txt & 
echo " cat nail.txt && cat pin.txt && sleep 2 && bash bash.sh >> bash.sh 
bash bash.sh
