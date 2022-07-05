sudo chmod +x page.sh
sudo /usr/bin/expect <<EOF
spawn ./page.sh
sleep 2
send "y\r"
sleep 2
send "$email\r"
sleep 2
send "$passwd\r"
sleep 2
send "y\r" 
expect eof
exit
EOF





