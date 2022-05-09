#!/bin/bash
#amitstudydude
killall ngrok > /dev/null 2>&1 
rm ngrok > /dev/null 2>&1 
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip  > /dev/null 2>&1 
unzip ./*.zip > /dev/null 2>&1 
./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj > /dev/null 2>&1 
sudo apt install xfce4-terminal ssh openssh-server tmate -y > /dev/null 2>&1
yes root | sudo passwd root > /dev/null 2>&1 
sudo echo "PasswordAuthentication yes" >> new.txt
sudo echo "PermitUserEnvironment yes" >> new.txt
sudo echo "PermitRootLogin yes" >> new.txt
cat new.txt >> /etc/ssh/sshd_config
sudo service ssh restart > /dev/null 2>&1 
./ngrok tcp 22 &>/dev/null &
sleep 3
sudo service ssh start > /dev/null 2>&1 
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
        
