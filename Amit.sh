#! /bin/bash
import os
CRP = "" #@param {type: "string"}
!wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
!sudo apt install --fix-broken ./*.deb
!sudo adduser user chrome-remote-desktop
!sudo rm *.deb
command = f"{CRP} -pin=123456"
os.system(f"su - user -c '{command}'")
os.system("${{CRP}} -pin=123456")
!sudo apt install xfce4 xfce4-goodies xfce4-terminal -y
#sudo service lightdm stop
#sudo service dbus start
!sudo service chrome-remote-desktop start
!sudo apt update && apt upgrade -y
!sleep 1d
