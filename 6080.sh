#!/bin/bash
lt --port 6080 > nain.txt & 
echo " cat nain.txt && sleep 2 && bash nain.sh " >> nain.sh 
bash nain.sh
bash 6080.sh
