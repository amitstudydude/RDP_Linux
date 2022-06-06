#! /bin/bash
sudo rm $(which pagekite.py) $(which pagekite-gtk.py)
rm *.exp
sudo curl -O https://pagekite.net/pk/pagekite.py
sudo chmod +x pagekite.py
sudo mv -f pagekite.py /usr/local/bin
export email=y0nxj8ze4@mozmail.com
export passwd=a3z2cfdb
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/script.exp https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/5555.exp
sudo python3 -m http.server 5555 
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
sudo chmod +x script.exp
sudo chmod +x 5555.exp
expect script.exp 
expect 5555.exp 
cd ..
#port forwarding 80 to 8080
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
sleep 1d



















