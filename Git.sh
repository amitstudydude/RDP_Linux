#!/bin/bash
sudo systemctl start chrome-remote-desktop@$USER
sudo systemctl status chrome-remote-desktop@$USER
bash *.sh
- name: Create SSH Access
      uses: mxschmitt/action-tmate@v3
