#!/bin/bash
#sudo rm *.iso *.hda
#wget https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso

#wget https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso

sudo apt-get install qemu qemu-system qemu-system-x86 -y

qemu-img create ubuntu.hda 25G
qemu-system-x86_64 -hda ubuntu.hda -boot d -cdrom *.iso -m 8192 



sudo apt-get install qemu qemu-system qemu-system-x86 -y && qemu-system-x86_64 -hda ubuntu.hda -boot d -m 8192 

.
