#! /bin/bash
cd /root
sudo apt update 
sudo apt install curl iptables expect
cd .. && python3 -m http.server 1234
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 1234 -j REDIRECT --to-port 5555
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
#sudo rm $(which pagekite.py) $(which pagekite-gtk.py)
cd /root
sudo curl -O https://pagekite.net/pk/pagekite.py
sudo chmod +x pagekite.py
sudo mv pagekite.py /usr/local/bin
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/main.exp https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/share.exp
sudo chmod +x main.exp
sudo chmod +x share.exp
expect main.exp &
sleep 10
./share.exp &

sleep 1d



