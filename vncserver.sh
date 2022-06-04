#!/bin/sh
sudo apt install tightvncserver tightvnc-java

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
lt --port 5901 &
vncserver -name github -alwaysshared -basehttpport 5901 -httpport 5901
