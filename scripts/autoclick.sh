sudo apt install xdotool
xdotool getmouselocation --shell
while :; do xdotool mousemove $X $Y click 1 ; done


