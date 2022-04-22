#!/bin/bash
ssh-keygen -t rsa
read -p "ssh $(whoami)@$(curl ifconfig.me)" ssh
eval $ssh

