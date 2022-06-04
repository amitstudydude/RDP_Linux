#!/bin/sh
cd && cd ../..
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
printf "root" | su root -c "sudo apt-get install build-essential cmake git libjson-c-dev libwebsockets-dev && git clone https://github.com/tsl0922/ttyd.git && git clone https://github.com/novnc/noVNC.git /opt/novnc && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify && \ 
cd ttyd && mkdir build && cd build && cmake .. && make && make install && ttyd -p 8080 bash -x & " 
echo "<html><head><meta http-equiv=\"Refresh\" content=\"0; url=vnc.html?autoconnect=true&reconnect=true&reconnect_delay=1000&resize=scale&quality=9\"></head></html>" > /opt/novnc/index.html 

sudo DEBIAN_FRONTEND=noninteractive apt install -y tzdata xfonts-base xfonts-100dpi npm xfonts-75dpi keyboard-configuration lightdm apt-utils xserver-xorg-video-dummy xserver-xorg-legacy tightvncserver 
sudo apt install xfce4 

dpkg-reconfigure lightdm
 

sudo apt install tightvncserver expect


prog=/usr/bin/vncpasswd
mypass="123456"
answer="n"

/usr/bin/expect <<EOF
spawn "$prog"
expect "Password:"
send "$mypass\r"
expect "Verify:"
send "$mypass\r"
expect "Would you like to enter a view-only password (y/n)?"
send "$answer\r"
expect eof
exit
EOF

echo "done"

sudo npm install -g localtunnel

vncserver :1

vncserver -clean -kill :1

cd && cd .vnc
echo " #! /bin/bash " > xstartup
echo " startxfce4 & " >> xstartup
chmod +x xstartup
vncserver -alwaysshared



   
lt --port 8080 >> nail.txt & 
lt --port 6080 >> pin.txt & 
echo " cat nail.txt && cat pin.txt && sleep 2 && bash bash.sh " >> bash.sh 


bash bash.sh &

/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5901 --listen 6080 
