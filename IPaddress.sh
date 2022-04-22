#!/bin/bash
ssh-keygen -t rsa
ip="ssh -i /home/$(whoami)/.ssh/id_rsa $(whoami)@$(curl ifconfig.me)"
$ip

