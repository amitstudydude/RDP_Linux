
spawn pagekite.py $port $parent
match_max 100000
send "y\r"
send "$email"
send "\r"
send "$passwd\r"
send "y\r" 
expect eof
exit
EOF





