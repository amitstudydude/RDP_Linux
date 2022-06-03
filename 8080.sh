#!/bin/bash
rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/8080.sh
echo " npm install -g localtunnel && lt --port 8080 >1.txt & " >> bash.sh
echo " cat 1.txt && lt --port 6080 >2.txt " >> bash.sh
echo " cat 2.txt " >> bash.sh
touch new.sh
mv bash.sh  new.sh
cat new.sh
bash new.sh
bash 8080.sh
