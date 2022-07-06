sudo apt install expect 
curl https://rclone.org/install.sh | sudo bash 
sudo expect <<EOF
spawn rclone config
send "n\r"
send "drive\r"
send "17\r"
send "\r"
send "\r"
send "1\r"
send "\r"
send "\r"
send "n\r"
send "n\r"
send "eyJ0b2tlbiI6IntcImFjY2Vzc190b2tlblwiOlwieWEyOS5hMEFScmRhTS02LXdPc3RTb0ZYR2pacmUxenh6WVdNNnlVbzNjRjR2cGtsQ2dPWk1hamMzUTFRaGhZanc1THFNQThzbUk0SzZMc25jTWdXODNwQUJhc1BaVS10bmw3b2FrTlAxYnJHYzJWM0JLTkpYTGszVFM3M0FHVHg4aURsdndxeXI0THRxVzFEQlV5SWpRUW1xVy1HcHdpa05yT1wiLFwidG9rZW5fdHlwZVwiOlwiQmVhcmVyXCIsXCJyZWZyZXNoX3Rva2VuXCI6XCIxLy8wNHVndkluZXFzTDhkQ2dZSUFSQUFHQVFTTndGLUw5SXJCaXRSYlcxRnpzV1NzX3FFUDF2YVE0dkg3Yk9CdWFaWDdoaGhuaU5MeFRMZC1pemUtdTF6UVQ5M3BSamFYS2t4R0pRXCIsXCJleHBpcnlcIjpcIjIwMjItMDctMDZUMDc6NDg6NDYuMzg1MjEwNzcxWlwifSJ9\r"
send "y\r"
send "0AGEwvCHrkbI_Uk9PVA\r"
send "y\r"
send "q\r"
expect eof
EOF
sudo apt install expect 
curl https://rclone.org/install.sh | sudo bash 
sudo expect <<EOF
spawn rclone config
send "n\r"
send "mega\r"
send "26\r"
send "mehes53030@shbiso.com\r"
send "y\r"
send "mehes53030@shbiso.com\r"
send "mehes53030@shbiso.com\r"
send "n\r"
send "y\r"
send "q\r"
expect eof
EOF
echo 'export domain="53682-jhaji.pagekite.me" && export port="53682" && export passwd="24ebe38z" && export email="gpw97v95c@mozmail.com" &&  export parent="jhaji.pagekite.me"' >> yo && cp yo page.sh && cp yo finale.sh && rm yo
wget -O lull https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/expect.sh && cat lull >> finale.sh && rm lull
sudo bash finale.sh
pagekite.py   > /dev/null 2>&1 &
#rclone authorize "drive" "eyJzY29wZSI6ImRyaXZlIn0"
