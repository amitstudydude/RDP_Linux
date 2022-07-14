pip install termpair
termpair share --host "https://chadsmith.dev/termpair/" --port 443 >>cat.txt &
sudo apt install expect &
wget https://github.com/elisescu/tty-share/releases/download/v2.2.1/tty-share_linux-amd64
chmod +x ./tty-share_linux-amd64
sudo apt-get install build-essential cmake git libjson-c-dev libwebsockets-dev && git clone https://github.com/tsl0922/ttyd.git && git clone https://github.com/novnc/noVNC.git /opt/novnc && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify && \ 
cd ttyd && mkdir build && cd build && cmake .. && make && make install && ttyd -p 1234 bash -x & 
npm install -g localtunnel
npm i cloudcmd -g --force
cloudcmd --port 7777 >>cat.txt &
lt --port 7777 >> cat.txt &
lt --port 1234 >> cat.txt &
sudo /usr/bin/expect >>cat.txt <<EOF &
spawn ./tty-share_linux-amd64 -public 
sleep 2
send -- "\r" 
set timeout -1
expect eof 
EOF
while :; do cat cat.txt ; sleep 2 ; done
