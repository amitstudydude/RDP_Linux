#! /bin/bash
cd /root
sudo rm $(which pagekite.py) $(which pagekite-gtk.py)
rm *.exp
sudo curl -O https://pagekite.net/pk/pagekite.py
sudo chmod +x pagekite.py
sudo mv -f pagekite.py /usr/local/bin
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/main.exp https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/share.exp
cd /root
expect main.exp &
expect share.exp &
cd .. && python3 -m http.server 1234
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 1234 -j REDIRECT --to-port 5555
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
sleep 1d
