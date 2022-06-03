#!/bin/bash
rm *
lt --port 8080 >>1.txt &
lt --port 6080 >>2.txt &
cat 1.txt && cat 2.txt 
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/8080.sh 
