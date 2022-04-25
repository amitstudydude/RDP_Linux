#!/bin/bash
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list
sudo cat sources.list >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
sudo apt update
clear
