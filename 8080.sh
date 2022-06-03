#!/bin/bash
sudo npm install -g localtunnel
touch 1.txt 
touch 2.txt
lt --port 8080 > 1.txt &
lt --port 6080 > 2.txt &
cat 1.txt && cat 2.txt && sleep 2 && bash 8080.sh

