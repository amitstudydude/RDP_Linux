#!/bin/bash
lt --port 8080 > 1.txt & 
echo " cat 1.txt && sleep 2 && bash 1.sh " >> 1.sh 
bash 1.sh
bash 8080.sh
