#!/bin/bash
gcloud cloud-shell ssh
ip="ssh -i /home/$(whoami)/.ssh/id_rsa -p 6000 $(whoami)@$(curl ifconfig.me)"
$ip

