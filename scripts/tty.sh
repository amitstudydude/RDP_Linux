sudo apt install expect
wget https://github.com/elisescu/tty-share/releases/download/v2.2.1/tty-share_linux-amd64
chmod +x ./tty-share_linux-amd64
while :; do cat cat.txt ; sleep 10 ; done &
sudo /usr/bin/expect >cat.txt <<EOF
spawn ./tty-share_linux-amd64 -public 
sleep 2
send -- "\r" 
set timeout -1
expect eof 
EOF
while :; do cat cat.txt ; sleep 2 ; done
