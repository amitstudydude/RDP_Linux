#!/bin/bash
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken ./*.deb && rm *.deb
${{ github.event.inputs.auth }} -pin=123456
sudo apt install firefox gnome-core -y
bash *.sh
- name: Create SSH Access
      uses: mxschmitt/action-tmate@v3
