#!/bin/bash
echo " lt --port 8080 >>nail.txt & " >> bash.sh
echo " cat nail.txt && lt --port 6080 >>pin.txt & " >> bash.sh
echo " cat pin.txt && rm *.sh " >> bash.sh && touch new.sh && mv bash.sh new.sh && cat new.sh && bash new.sh && bash 8080.sh
