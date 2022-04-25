#!/bin/bash
#docker pull ubuntu
#docker run -it ubuntu
apt update && apt install wget sudo -y 
useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
usermod -a -G sudo,adm user
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/c.sh
cat sources.list >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
apt update
clear
DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y   
clear
apt install dbus-x11 -y
clear
rm *
