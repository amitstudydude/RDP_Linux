#!/bin/bash
echo " lt --port 8080 >> nail.txt & " >> bash.sh
echo " lt --port 6080 >> pin.txt & " >> bash.sh
echo " cat nail.txt && cat pin.txt && sleep 2 && rm *.sh " >> bash.sh && touch new.sh && mv bash.sh new.sh && bash new.sh  
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/tunnel.sh > /dev/null 2>&1
bash tunnel.sh
