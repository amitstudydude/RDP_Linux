#!/bin/sh
cd 

sudo dpkg-reconfigure lightdm
 

sudo apt install tightvncserver expect


prog=/usr/bin/vncpasswd
mypass="123456"
answer="n"

sudo /usr/bin/expect <<EOF
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
echo " gnome-session & " >> xstartup
sudo chmod +x xstartup
vncserver -alwaysshared



lt --port 1234 >> nail.txt &
lt --port 8080 >> nail.txt & 
lt --port 6080 >> nail.txt & 
echo " cat nail.txt && sleep 2 && bash bash.sh " >> bash.sh 


sudo bash bash.sh 

