#!/bin/bash
lt --port 6080 > nain.txt & 
echo " cat nain.txt && echo ${{ github.event.inputs.token }} && sleep 2 && bash nain.sh " >> nain.sh 
bash nain.sh
bash Lt.sh
