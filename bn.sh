#!/bin/sh
sudo apt install tightvncserver 

prog=/usr/bin/vncpasswd
mypass="123456"

/usr/bin/expect <<EOF
spawn "$prog"
expect "Password:"
send "$mypass\r"
expect "Verify:"
send "$mypass\r"
expect eof
exit
EOF

sudo npm install -g localtunnel
/opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5933 --listen 6040 &
lt --port 6400 & 
vncserver :33 -name github -alwaysshared 
