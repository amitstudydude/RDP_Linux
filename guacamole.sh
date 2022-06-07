#! /bin/bash

printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
cd
sudo apt update && \
sudo DEBIAN_FRONTEND=noninteractive apt -y install ubuntu-desktop expect xrdp openssh-server \
    tomcat9 tomcat9-admin tomcat9-common tomcat9-user \
    maven build-essential libcairo2-dev libjpeg-turbo8-dev \
    libpng-dev libtool-bin libossp-uuid-dev libvncserver-dev \
    freerdp2-dev libssh2-1-dev libtelnet-dev libwebsockets-dev \
    libpulse-dev libvorbis-dev libwebp-dev libssl-dev \
    libpango1.0-dev libswscale-dev libavcodec-dev libavutil-dev \
    libavformat-dev magic-wormhole \
    build-essential cmake git libjson-c-dev libwebsockets-dev \
    ubuntu-desktop make expect  ssh nautilus gnome-terminal \
    tzdata npm keyboard-configuration apt-utils \
    dbus-x11 ssh openssh-server xrdp tmate apt-utils software-properties-common apt-transport-https sudo \
    psmisc tmux nano wget curl telnet gnupg gdb git autoconf locales gdebi \
    meld dos2unix meshlab xserver-xorg-video-dummy xserver-xorg-legacy \
    python3 python3-dev python3-pip python3-setuptools \
    gcc g++ maven openjdk-8-jdk
    

wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | bash guac-install.sh 
cd
sudo systemctl daemon-reload
sudo systemctl start guacd
sudo systemctl enable guacd
sudo mkdir -p /etc/guacamole/{extensions,lib}
cd
sudo mv guacamole-1.4.0.war /var/lib/tomcat9/webapps/guacamole.war
sudo systemctl restart tomcat9 guacd
cd
sudo systemctl daemon-reload
sudo systemctl restart ssh xrdp tomcat9 guacd
cd 
sudo makdir /usr/share/tomcat8/
sudo touch /usr/share/tomcat8/.guacomol
ln -s  /etc/guacamole/guacamole.properties /usr/share/tomcat8/.guacomol
sudo systemctl daemon-reload
sudo systemctl restart tomcat9 guacd

sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80

sudo npm install -g localtunnel

#wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/page.sh
#sudo bash page.sh &

sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 1234 -j REDIRECT --to-port 5555 &
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080 &
cd .. && python3 -m http.server 1234 &
lt --port 8080 >> nail.txt &
echo " cat nail.txt && sleep 2 && bash bash.sh " >> bash.sh 

bash bash.sh 



