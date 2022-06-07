#! /bin/bash

cd /root
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
sudo apt update 
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/install.sh && sudo bash install.sh
wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | bash guac-install.sh 
sudo mkdir -p /etc/guacamole/{extensions,lib}
sudo mv guacamole-1.4.0.war /var/lib/tomcat9/webapps/guacamole.war
sudo mkdir /usr/share/tomcat9/
sudo touch /usr/share/tomcat9/.guacomol
sudo touch /usr/share/tomcat8/.guacomol
ln -s  /etc/guacamole/guacamole.properties /usr/share/tomcat9/.guacomol
sudo mkdir /usr/share/tomcat8/
sudo touch /usr/share/tomcat8/.guacomol
ln -s  /etc/guacamole/guacamole.properties /usr/share/tomcat8/.guacomol
sudo systemctl daemon-reload
sudo systemctl enable guacd
sudo systemctl enable tomcat9
sudo systemctl start guacd
sudo systemctl restart ssh xrdp tomcat9 guacd
sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80
sudo npm install -g localtunnel
lt --port 8080 >> u.txt &
lt --port 1234 >> v.txt &
echo "echo $(cat u.txt)/guacamole && sleep 2 && bash u.sh " > u.sh 
echo "echo $(cat v.txt) && sleep 2 && bash v.sh " > v.sh 
bash u.sh & 
bash v.sh &
cd .. && python3 -m http.server 5555 >> /root/nail.txt &
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 1234 -j REDIRECT --to-port 5555 &
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080 &
gsettings set org.gnome.desktop.interface enable-animations false &
sleep 5h
sleep 40m





