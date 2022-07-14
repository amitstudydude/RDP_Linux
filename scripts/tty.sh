curl https://github.com/elisescu/tty-share/releases/download/v2.2.1/tty-share_linux-amd64 | chmod +x 
sudo /usr/bin/expect <<EOF
spawn ./tty-share_linux-amd64 -public &>cat.txt
sleep 2
send -- "\r" 
set timeout -1
expect eof 
EOF
cat cat.txt
