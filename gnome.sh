#! /bin/bash

cd

sudo wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | sudo bash guac-install.sh 
sudo ufw enable && sudo  ufw allow 8080 && sudo ufw allow 22
sudo apt install tomcat9 tomcat9-admin tomcat9-common tomcat9-user
sudo apt install gcc g++ maven openjdk-8-jdk build-essential libcairo2-dev libjpeg-turbo8-dev \
    libpng-dev libtool-bin libossp-uuid-dev libvncserver-dev \
    freerdp2-dev libssh2-1-dev libtelnet-dev libwebsockets-dev \
    libpulse-dev libvorbis-dev libwebp-dev libssl-dev \
    libpango1.0-dev libswscale-dev libavcodec-dev libavutil-dev \
    libavformat-dev
cd
wget https://downloads.apache.org/guacamole/1.4.0/source/guacamole-server-1.4.0.tar.gz https://downloads.apache.org/guacamole/1.4.0/source/guacamole-client-1.4.0.tar.gz https://downloads.apache.org/guacamole/1.4.0/binary/guacamole-1.4.0.war
tar -xvf guacamole-server-1.4.0.tar.gz
tar -xvf guacamole-client-1.4.0.tar.gz
cd guacamole-server-1.4.0
sudo ./configure --with-init-dir=/etc/init.d 
sudo make 
sudo make install
sudo ldconfig
sudo systemctl daemon-reload
sudo systemctl start guacd
sudo systemctl enable guacd
sudo mkdir -p /etc/guacamole/{extensions,lib}
cd
sudo mv guacamole-1.4.0.war /var/lib/tomcat9/webapps/guacamole.war
sudo systemctl restart tomcat9 guacd
cd
cd guacamole-client-1.4.0
mvn package
sudo makdir /usr/share/tomcat8/
sudo touch /usr/share/tomcat8/.guacomol
ln -s  /etc/guacamole/guacamole.properties /usr/share/tomcat8/.guacomol
sudo systemctl daemon-reload
sudo systemctl restart tomcat9 guacd
cd 
sudo apt-get install build-essential cmake git libjson-c-dev libwebsockets-dev && git clone https://github.com/tsl0922/ttyd.git && git clone https://github.com/novnc/noVNC.git /opt/novnc && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify && \ 
cd ttyd && mkdir build && cd build && cmake .. && make && make install && ttyd -p 1234 bash -x & 
echo "<html><head><meta http-equiv=\"Refresh\" content=\"0; url=vnc.html?autoconnect=true&reconnect=true&reconnect_delay=1000&resize=scale&quality=9\"></head></html>" > /opt/novnc/index.html 
sudo DEBIAN_FRONTEND=noninteractive apt install -y tzdata xfonts-base xfonts-100dpi npm xfonts-75dpi keyboard-configuration apt-utils xserver-xorg-video-dummy xserver-xorg-legacy 
sudo apt install ubuntu-desktop gnome-panel gnome-settings-daemon metacity tigervnc-standalone-server make expect  ssh nautilus gnome-terminal
sudo ufw enable && ufw allow 8080 && ufw allow 22 && ufw allow 5901
ssh -L 5901:127.0.0.1:5901 $(whoami)@$(hostname)

prog=/usr/bin/vncpasswd
mypass="123456"
answer="n"

sudo /usr/bin/expect <<EOF
spawn "$prog"
expect "Password:"
send "$mypass\r"
expect "Verify:"
send "$mypass\r"
expect "Would you like to enter a view-only password (y/n)?"
send "$answer\r"
expect eof
exit
EOF

sudo npm install -g localtunnel

vncserver :1

vncserver -clean -kill :1


cd && cd .vnc && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/xstartup.sh && mv xstartup.sh xstartup 
sudo chmod +x xstartup

vncserver -alwaysshared



lt --port 1234 >> nail.txt &
lt --port 8080 >> nail.txt & 
lt --port 6080 >> nail.txt & 
echo " cat nail.txt && sleep 2 && bash bash.sh " >> bash.sh 


bash bash.sh 









