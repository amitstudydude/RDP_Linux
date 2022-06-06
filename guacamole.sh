#! /bin/bash

cd
sudo apt update && apt upgrade && \
sudo apt install ubuntu-desktop expect xrdp openssh-server gnome-session-flashback nautilus mate-terminal gnome-panel  gnome-settings-daemon metacity
sudo DEBIAN_FRONTEND=noninteractive apt install -y tomcat9 tomcat9-admin tomcat9-common tomcat9-user tightvncserver \
    gcc g++ maven openjdk-8-jdk build-essential libcairo2-dev libjpeg-turbo8-dev \
    libpng-dev libtool-bin libossp-uuid-dev libvncserver-dev \
    freerdp2-dev libssh2-1-dev libtelnet-dev libwebsockets-dev \
    libpulse-dev libvorbis-dev libwebp-dev libssl-dev \
    libpango1.0-dev libswscale-dev libavcodec-dev libavutil-dev \
    libavformat-dev \
    build-essential cmake git libjson-c-dev libwebsockets-dev \
    ubuntu-desktop gnome-panel gnome-settings-daemon metacity make expect  ssh nautilus gnome-terminal \
    tzdata npm keyboard-configuration apt-utils \

sudo wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | sudo bash guac-install.sh 
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
mvn package &
sudo mkdir /usr/share/tomcat8/
sudo touch /usr/share/tomcat8/.guacomol
ln -s  /etc/guacamole/guacamole.properties /usr/share/tomcat8/.guacomol
sudo systemctl daemon-reload
sudo systemctl restart ssh xrdp tomcat9 guacd
cd 

sudo npm install -g localtunnel

lt --port 8080 >> nail.txt &
echo " cat nail.txt && sleep 2 && bash bash.sh " >> bash.sh 

bash bash.sh 





