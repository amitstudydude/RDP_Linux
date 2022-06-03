#!/bin/bash
x11vnc -display :0 -forever -loop -reflect localhost:5900 -create -shared &
lt --port 6080 > nain.txt & 
echo " cat nain.txt && sleep 2 && bash nain.sh " >> nain.sh 
bash nain.sh
bash 6080.sh
