#! /bin/bash
#wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/page.service 
#sudo mv page.service /etc/systemd/system/
sudo cp page.sh /usr/local/sbin/
sudo chmod +x /usr/local/sbin/page.sh
sudo systemctl status page.service &
sudo rm $(which pagekite.py) $(which pagekite-gtk.py)
rm *.exp
curl -O https://pagekite.net/pk/pagekite.py
chmod +x pagekite.py
sudo mv -f pagekite.py /usr/local/bin
export email=y0nxj8ze4@mozmail.com
export passwd=a3z2cfdb
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/script.exp https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/5555.exp
sudo chmod +x script.exp
sudo chmod +x 5555.exp
./script.exp &
./5555.exp &
cd ..
python3 -m http.server 5555 &


#autoexpect pagekite.py 5555 5555-jha.pagekite.me
  #run command and ^c to stop







#port forwarding 80 to 8080

sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080






















