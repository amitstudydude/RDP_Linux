wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z && 7z x *7z  && rm *7z &
wget  https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/brave && sudo bash brave && rm brave &
rm -rf amit
git init
git clone https://jhaji-kv@bitbucket.org/7sk8g739g/amit.git
cd amit
cp B.7z rdp
rm *
sudo apt install expect
sudo /usr/bin/expect <<EOF
spawn git push origin
sleep 3
send -- "utT2AtgBKq9PKvckcLLN\r"
sleep 1
expect eof
EOF
mkdir rdp 
cd rdp
rm *.txt
while :; do cat tcp ; sleep 2 ; done &
sudo apt update && sudo apt install pip && pip install jprq
jprq tcp 22 &>>doge &
jprq tcp 3389 &>>doge &
sudo apt update && sudo apt install pip xrdp gnome-session ssh openssh-server -y 
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root        
echo "PasswordAuthentication yes" >>sshd_config
echo "PermitUserEnvironment yes" >>sshd_config
echo "PermitRootLogin yes" >>sshd_config
sudo cat sshd_config >> /etc/ssh/sshd_config
sudo service ssh restart
rm sshd_config
sudo service xrdp restart
sed '22,24!d' doge >>tcp
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git add tcp
git commit -m "tcp"
sudo apt install expect
sudo /usr/bin/expect <<EOF
set timeout -1
spawn git push origin
sleep 3
send -- "utT2AtgBKq9PKvckcLLN\r"
sleep 1
expect "yo"
expect eof
EOF



        
##### wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/ssh && sudo bash ssh && rm ssh




##
