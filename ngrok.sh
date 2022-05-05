#!/bin/bash
rm *.zip
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 
unzip *.zip
#amitstudydude
./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj
echo https://dashboard.ngrok.com/cloud-edge/endpoints 
killall ngrok
./ngrok tcp 3389
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
        
