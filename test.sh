#! /bin/bash
sudo npm install -g localtunnel
lt --port 80 >> nail.txt &
sleep 1
lt --port 1234 >> pin.txt &
sleep 1
echo $(cat nail.txt)/guacamole >>cat.txt
sleep 1
echo $(cat pin.txt) >>cat.txt
sleep 1
echo " cat cat.txt && sleep 2 && bash bash.sh " >>bash.sh 
bash bash.sh 
