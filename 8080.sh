#!/bin/bash
rm 8080.sh
sudo npm install -g localtunnel 
lt --port 8080 >>1.txt &
lt --port 6080 >>2.txt &
cat 1.txt && cat 2.txt && sleep 2 
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/8080.sh
bash 8080.sh
