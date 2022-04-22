#!/bin/bash
ssh-keygen -t rsa
ip="ssh $(whoami)@$(curl ifconfig.me)"
$ip

