#! /bin/bash
sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
cd
sudo su user 
eval $CRP -pin=123456
cd /workspace/*/
