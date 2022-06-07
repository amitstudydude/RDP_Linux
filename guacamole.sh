#! /bin/bash

cd /root
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
sudo apt update 
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/install.sh && sudo bash install.sh
wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | bash guac-install.sh 
sudo systemctl daemon-reload
sudo systemctl enable guacd
sudo systemctl start guacd
sudo systemctl restart ssh xrdp tomcat9 guacd
sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80
sudo npm install -g localtunnel
lt --port 8080 >> nail.txt &
echo " cat nail.txt && sleep 2 && bash bash.sh " >> bash.sh 
bash bash.sh &
cd .. && python3 -m http.server 1234 >> nail.txt &
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 1234 -j REDIRECT --to-port 5555 &
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080 &
sleep 1d





