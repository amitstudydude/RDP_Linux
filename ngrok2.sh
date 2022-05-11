#!/bin/bash
killall ngrok
rm ngrok 
yes root | passwd
sudo echo "PasswordAuthentication yes" >> new.txt
sudo echo "PermitUserEnvironment yes" >> new.txt
sudo echo "PermitRootLogin yes" >> new.txt
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip  
unzip ./ngrok-stable-linux-amd64.zip
#amitstudydude
#./ngrok authtoken 291AjiIj2SAmYL3LD7K87OYUkdO_2KQwTggtMF5qaax64G9Te 
#guh7891@outlook.com
./ngrok authtoken 291lhRXUGTs48sSBejg1nm4VNDi_2VwY5BCEpNLTdzFj2kV8b
sudo apt install xfce4-terminal ssh openssh-server tmate -y 
sudo cat >new.txt >> /etc/ssh/sshd_config
sudo service ssh restart 
./ngrok tcp 22 
