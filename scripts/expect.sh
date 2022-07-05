
sudo /usr/bin/expect <<EOF
spawn pagekite.py $port $parent
expect eof
exit
EOF





