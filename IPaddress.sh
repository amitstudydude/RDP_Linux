#!/bin/bash
gcloud cloud-shell ssh
ip="ssh -i /home/$(whoami)/.ssh/id_rsa $(whoami)@$(curl ifconfig.me)"
$ip

