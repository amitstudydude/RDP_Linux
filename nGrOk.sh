#!/bin/bash
#amitstudydude
killall ngrok
rm ngrok 
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip  
unzip ./ngrok-stable-linux-amd64.zip
./ngrok authtoken 291AjiIj2SAmYL3LD7K87OYUkdO_2KQwTggtMF5qaax64G9Te 
sudo apt install xfce4-terminal ssh openssh-server tmate -y 
printf "root\nroot" | passwd
sudo echo "PasswordAuthentication yes" >> new.txt
sudo echo "PermitUserEnvironment yes" >> new.txt
sudo echo "PermitRootLogin yes" >> new.txt
cat new.txt >> /etc/ssh/sshd_config
sudo service ssh restart 
./ngrok tcp 22 &>/dev/null &
sudo service ssh start 
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
        
