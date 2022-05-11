#!/bin/bash
#amitstudydude
cat Ngrok.sh
killall ngrok
rm ngrok 
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip  
unzip ./ngrok-stable-linux-amd64.zip
./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj 
sudo apt install xfce4-terminal ssh openssh-server tmate -y > /dev/null 2>&1
printf "root/nroot" | chpasswd
sudo echo "PasswordAuthentication yes" >> new.txt
sudo echo "PermitUserEnvironment yes" >> new.txt
sudo echo "PermitRootLogin yes" >> new.txt
cat new.txt >> /etc/ssh/sshd_config
sudo service ssh restart 
./ngrok tcp 22 &>/dev/null &
sleep 3
sudo service ssh start 
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
        
