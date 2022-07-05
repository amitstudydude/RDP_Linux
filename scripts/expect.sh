prog=/usr/local/bin/pagekite.py $port $parent
sudo /usr/bin/expect <<EOF
spawn "$prog"
send "y\r"
send "$email"
send "\r"
send "$passwd\r"
send "y\r" 
expect eof
exit
EOF





