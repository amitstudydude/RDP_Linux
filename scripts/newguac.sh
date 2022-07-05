#! /bin/bash
cd /root
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
sudo apt update && sudo apt install nautilus
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/install.sh && sudo bash install.sh
wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | bash guac-install.sh 
sudo mkdir -p /etc/guacamole/{extensions,lib}
sudo systemctl daemon-reload
sudo systemctl enable guacd
sudo systemctl enable tomcat9
sudo systemctl start guacd
sudo systemctl restart ssh xrdp tomcat9 guacd 
sudo ufw enable && ufw allow 22 && ufw allow 8080 && ufw allow 80
gsettings set org.gnome.desktop.interface enable-animations false 
sudo apt install expect
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/jhaji.exp
curl -O https://pagekite.net/pk/pagekite.py && sudo chmod +x pagekite.py && sudo mv -f pagekite.py /usr/local/bin
expect jhaji.exp 
pagekite.py 8080 jhaji.pagekite.me 
echo " pagekite.py 8080 jhaji.pagekite.me " > pagekite.sh
echo " sleep 30 && bash pagekite.sh " >> pagekite.sh
bash pagekite.sh
