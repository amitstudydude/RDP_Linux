#!/bin/bash
rm *
lt --port 8080 >>1.txt >&/dev/null 2>&1 &
lt --port 6080 >>2.txt >&/dev/null 2>&1 &
cat 1.txt && cat 2.txt 
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/8080.sh 
bash 8080.sh
