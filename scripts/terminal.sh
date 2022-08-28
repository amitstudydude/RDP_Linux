while :; do cat ./cat.txt ; cat ./rom.txt ; sleep 10 ; done  &

#wetty-docker
docker run  -dit -p 3000:3000 wettyoss/wetty --ssh-host=172.17.0.1


#ttyd
sudo apt-get install build-essential cmake git libjson-c-dev libwebsockets-dev && git clone https://github.com/tsl0922/ttyd.git && git clone https://github.com/novnc/noVNC.git /opt/novnc && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify 
cd ttyd && mkdir build && cd build && cmake .. && make && make install 
cd && ttyd -p 1234 bash -x &


##tty-share
#do ./tty-share_linux-amd64 -public for direct link
wget https://github.com/elisescu/tty-share/releases/download/v2.2.1/tty-share_linux-amd64
chmod +x ./tty-share_linux-amd64
sudo apt install expect 
sudo /usr/bin/expect >rom.txt <<EOF &
spawn ./tty-share_linux-amd64 
sleep 2
send -- "\r" 
set timeout -1
expect eof 
EOF


#termpair
pip install termpair 
echo 'termpair share --host "https://chadsmith.dev/termpair/" --port 443' >>cat.txt 

#gotty
wget -O yo.tar.gz https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz
7z x *.gz && 7z x *.tar && chmod +x ./gotty && rm yo*
./gotty --width 100 --height 100 -p 8989 -w bash &





npm install -g localtunnel
lt --port 8000 >> cat.txt &
lt --port 8989 >> cat.txt &
lt --port 1234 >> cat.txt &
lt --port 7777 >> cat.txt &


#cloudcmd
npm i cloudcmd -g --force
cloudcmd --port 7777  

