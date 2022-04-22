#!/bin/bash
${{ github.event.inputs.auth }} -pin=123456
sudo apt install firefox xfce4 -y
bash *.sh
- name: Create SSH Access
      uses: mxschmitt/action-tmate@v3
