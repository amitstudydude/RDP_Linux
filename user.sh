#!/bin/bash
sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo usermod -a -G sudo,adm user
su user
