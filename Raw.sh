#! /bin/bash
read -p "" CRP
sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
cd
sudo su user 
yes 123456 | eval $CRP 
cd /workspace/*/
