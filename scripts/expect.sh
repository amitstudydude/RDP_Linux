sudo apt install expect
curl -O https://pagekite.net/pk/pagekite.py && sudo chmod +x pagekite.py && sudo mv -f pagekite.py /usr/local/bin
echo 'pagekite.py $port $domain' >> page.sh
sudo chmod +x page.sh
sudo /usr/bin/expect <<EOF
set timeout -1
spawn ./page.sh
sleep 2
send "y\r"
sleep 2
send "y\r"
sleep 2
send "$email\r"
sleep 5
send "$passwd\r"
sleep 2
send "y\r" 
sleep 2
send "y\r" 
send "y\r" 
expect "What is your favorite topic?\r"
expect eof
EOF





#echo 'export domain="5555.jhaji.pagekite.me" && export port="8080" && export passwd="24ebe38z" && export email="gpw97v95c@mozmail.com" &&  export parent="jhaji.pagekite.me"' >> yo && cp yo page.sh && cp yo finale.sh && rm yo
#wget -O lull https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/expect.sh && cat lull >> finale.sh && rm lull
#sudo bash finale.sh
