#!/bin/bash
sudo rm *.iso
#wget https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso
wget https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso
sudo apt-get install qemu qemu-system qemu-system-x86 -y
qemu-img create i.hda 40G
qemu-system-x86_64 -hda i.hda -boot d -cdrom *.iso -m 8192 
