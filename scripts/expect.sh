
sudo /usr/bin/expect <<EOF
spawn "/usr/local/bin/pagekite.py $port $parent"
send "y\r"
send "$email"
send "\r"
send "$passwd\r"
send "y\r" 
expect eof
exit
EOF





