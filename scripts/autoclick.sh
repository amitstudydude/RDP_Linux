#!/bin/bash
sudo apt install xdotool
xdotool click --repeat 10000000000000 --delay 10000 1


while [ 1 ]; do
  xdotool mousemove 126 535 click 1 &
  sleep 5
done
