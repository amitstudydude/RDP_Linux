#!/bin/bash
killall ngrok
rm ngrok 
yes root | sudo passwd root
echo "PasswordAuthentication yes" >>sshd_config
echo "PermitUserEnvironment yes" >>sshd_config
echo "PermitRootLogin yes" >>sshd_config
sudo apt install ssh openssh-server -y 
sudo cat sshd_config >> /etc/ssh/sshd_config
sudo cat /etc/ssh/sshd_config > sshd_config
#sudo rm /etc/ssh/sshd_config && sudo mv sshd_config  /etc/ssh/
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip  
unzip ./ngrok-stable-linux-amd64.zip
#guh7891@outlook.com
./ngrok authtoken 291lhRXUGTs48sSBejg1nm4VNDi_2VwY5BCEpNLTdzFj2kV8b
sudo service ssh start 
./ngrok tcp 22 
#amitstudydude
./ngrok authtoken 291AjiIj2SAmYL3LD7K87OYUkdO_2KQwTggtMF5qaax64G9Te 
sudo service ssh restart
./ngrok tcp 22 



