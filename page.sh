#! /bin/bash
curl -O https://pagekite.net/pk/pagekite.py
chmod +x pagekite.py
sudo mv -f pagekite.py /usr/local/bin
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/script.exp
chmod +x script.exp
./script.exp &



#autoexpect pagekite.py 5555 5555-jha.pagekite.me
  #run command and ^c to stop



#email=y0nxj8ze4@mozmail.com
#Passwd=a3z2cfdb



#port forwarding 80 to 8080

sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080






















