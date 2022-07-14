curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/rclonemount.sh | sudo bash &
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
sudo apt update && sudo apt install dolphin
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z
curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/newinstall.sh | sudo bash 
7z x google.7z
rm *.7z



GUACVERSION="1.4.0"



SERVER="http://apache.org/dyn/closer.cgi?action=download&filename=guacamole/1.4.0"


wget -q -O guacamole-server-${GUACVERSION}.tar.gz ${SERVER}/source/guacamole-server-${GUACVERSION}.tar.gz

tar -xzf guacamole-server-${GUACVERSION}.tar.gz


wget -q  -O guacamole-${GUACVERSION}.war ${SERVER}/binary/guacamole-${GUACVERSION}.war


rm -rf /etc/guacamole/lib/
rm -rf /etc/guacamole/extensions/
mkdir -p /etc/guacamole/lib/
mkdir -p /etc/guacamole/extensions/

mkdir -p /usr/sbin/.config/freerdp
chown daemon:daemon /usr/sbin/.config/freerdp

mkdir -p /var/guacamole
chown daemon:daemon /var/guacamole

cd guacamole-server-${GUACVERSION}/

export CFLAGS="-Wno-error"

./configure --with-systemd-dir=/etc/systemd/system  &>> Log.txt
make &>> Log.txt
make install &>> $Log.txt

echo -e "Running Make on Guacamole-Server..."
ldconfig


mv -f guacamole-${GUACVERSION}.war /etc/guacamole/guacamole.war

ln -sf /etc/guacamole/guacamole.war /var/lib/tomcat9/webapps/

sudo mkdir /etc/guacamole/{extensions,lib}

sudo echo "GUACAMOLE_HOME=/etc/guacamole" >> /etc/default/tomcat9



cat >> /etc/guacamole/guacamole.properties <<- "EOF"


guacd-hostname: localhost
guacd-port:     4822
user-mapping:   /etc/guacamole/user-mapping.xml
auth-provider:  net.sourceforge.guacamole.net.basic.BasicFileAuthenticationProvider
EOF 


cat >> /etc/guacamole/user-mapping.xml <<- "EOF"

Paste the content below.

<user-mapping>
    <authorize 
            username="root"
            password="root">
            

        <connection name="ssh">
            <protocol>ssh</protocol>
            <param name="hostname">locallhost</param>
            <param name="port">22</param>
            <param name="username">runner</param>
            <param name="password">root</param>
        </connection>
        <connection name="rdp">
            <protocol>rdp</protocol>
            <param name="hostname">locallhost</param>
            <param name="port">3389</param>
            <param name="username">root</param>
            <param name="password">root</param>
        </connection>
    </authorize>
</user-mapping>



EOF


# Check if ufw is a valid command
if [ -x "$( command -v ufw )" ]; then
    # Check if ufw is active (active|inactive)
    if [[ $(ufw status | grep inactive | wc -l) -eq 0 ]]; then
        # Check if 8080 is not already allowed
        if [[ $(ufw status | grep "8080/tcp" | grep "ALLOW" | grep "Anywhere" | wc -l) -eq 0 ]]; then
            # ufw is running, but 8080 is not allowed, add it
            ufw allow 8080/tcp comment 'allow tomcat'
        fi
    fi
fi    

# It's possible that someone is just running pure iptables...

# Check if iptables is a valid running service
systemctl is-active --quiet iptables
if [ $? -eq 0 ]; then
    # Check if 8080 is not already allowed
    # FYI: This same command matches the rule added with ufw (-A ufw-user-input -p tcp -m tcp --dport 22 -j ACCEPT)
    if [[ $(iptables --list-rules | grep -- "-p tcp" | grep -- "--dport 8080" | grep -- "-j ACCEPT" | wc -l) -eq 0 ]]; then
        # ALlow it
        iptables -A INPUT -p tcp --dport 8080 --jump ACCEPT
    fi
fi

rm -rf guacamole-*

echo -e "${BLUE}Installation Complete\n- Visit: http://localhost:8080/guacamole/\n- Default login (username/password): guacadmin/guacadmin\n***Be sure to change the password***.${NC}"
sudo mkdir -p /etc/guacamole/{extensions,lib}
sudo systemctl daemon-reload
sudo systemctl enable guacd
sudo systemctl enable tomcat9
sudo systemctl start guacd
sudo systemctl restart ssh xrdp tomcat9 guacd 
sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80
