#! /bin/bash
sudo npm install -g localtunnel
lt --port 80 >>nail.txt &
lt --port 12345 >>pin.txt &
echo $(cat nail.txt)/guacamole >>cat.txt
echo $(cat pin.txt) >>cat.txt
echo " cat cat.txt && sleep 3 && bash bash.sh " >>bash.sh 
bash bash.sh 
