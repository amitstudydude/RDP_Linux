
sudo /usr/bin/expect -f <<EOF
match_max 100000
spawn "/usr/local/bin/pagekite.py $port $parent"
send "y\r"
send "$email"
send "\r"
send "$passwd\r"
send "y\r" 
expect eof
exit
EOF





