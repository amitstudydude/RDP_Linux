
spawn ./page.sh
send "y\r"
send "$email"
send "\r"
send "$passwd\r"
send "y\r" 
expect eof
exit
EOF





