#! /bin/bash
sudo apt install unzip xrdp -y 
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 
unzip ./ngrok-stable-linux-amd64.zip
#guh7891@outlook.com
./ngrok authtoken 291lhRXUGTs48sSBejg1nm4VNDi_2VwY5BCEpNLTdzFj2kV8b
sudo service xrdp restart 
./ngrok tcp 3389 &>/dev/null &
#amitstudydude
rm ngrok
unzip ./ngrok-stable-linux-amd64.zip
./ngrok authtoken 291AjiIj2SAmYL3LD7K87OYUkdO_2KQwTggtMF5qaax64G9Te
sudo service xrdp restart
./ngrok tcp 3389 &>/dev/null &
