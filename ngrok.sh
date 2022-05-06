#!/bin/bash
#amitstudydude
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ./*.zip
./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj
sudo apt install ssh openssh-server -y
echo "root:root" | chpasswd
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
sudo service ssh restart
./ngrok tcp --region in 22 &>/dev/null. 2>&1
sleep 3
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
        
