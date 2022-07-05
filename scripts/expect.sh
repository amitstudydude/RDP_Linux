sudo /usr/bin/expect <<EOF
spawn ./page.sh
send "y\r"
send "y\r"
send "$email\r"
send "\r"
send "$passwd\r"
send "y\r" 
expect eof
exit
EOF





