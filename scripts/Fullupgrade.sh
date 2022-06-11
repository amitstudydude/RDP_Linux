#! /bin/bash
lsb_release -a 

sudo apt-mark unhold libcudnn8 libcudnn8-dev libcublas-dev && sudo apt-mark unhold libcublas10 && sudo apt-mark unhold libcudnn7 && sudo apt-mark unhold libcudnn7-dev && sudo apt-mark unhold libnccl-dev && sudo apt-mark unhold libnccl2 
sudo apt update 
sudo apt-get dist-upgrade -y
sudo apt install --fix-broken libcudnn8 libcudnn8-dev -y
sudo apt install --fix-broken update-manager-core -y
sudo ln -sf /usr/bin/python3.6 /usr/bin/python3 
sudo apt upgrade -y 
sudo do-release-upgrade
