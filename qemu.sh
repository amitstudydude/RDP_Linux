#!/bin/bash
wget https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso
sudo apt install qemu-system-x86_64 -y
qemu-img create i.hda 2G
qemu-system-x86_64 -hda i.hda -boot d -cdrom *.iso -m 2048
