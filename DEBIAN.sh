#!/bin/bash
read -p "" CRP
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
sudo apt install --assume-yes --fix-broken ./*.deb && sudo rm *.deb *.deb.*    
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
wget  https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list
sudo rm /etc/apt/sources.list
sudo mv sources.list /etc/apt/
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
sudo apt update
clear
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/GDdrive.sh https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/m.7z
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y
rm *.deb.* *.deb
sudo apt update
sudo apt install dbus-x11 -y
clear
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
clear
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo apt install xfce4 -y
clear
sudo apt install xfce4-goodies -y
clear
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
sudo apt install xrdp -y 
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
#sudo apt install gnome -y
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
sudo apt install firefox -y
#sudo apt install firefox-esr -y
eval DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456
clear
sudo service chrome-remote-desktop start
clear
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Raw.sh
bash Raw.sh
rm Raw.sh
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
bash Loop.sh
clear
