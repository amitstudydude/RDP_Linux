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

cat >new.sh <<EOF             
cd /root && cd ..
mkdir -p /root/.config/rclone/ && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mv rclone.conf /root/.config/rclone 
curl https://rclone.org/install.sh | sudo bash 
mkdir drives && cd drives && mkdir Mega Teamdrive Drive cache 
rclone mount Mega: Mega --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other --daemon --transfers 100 --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s 
rclone mount Teamdrive: Teamdrive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other --daemon --transfers 100  --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s 
rclone mount Drive: Drive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other --daemon --transfers 100  --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s 
echo 'export domain="jhaji.pagekite.me" && export port="8080" && export passwd="24ebe38z" && export email="gpw97v95c@mozmail.com" &&  export parent="jhaji.pagekite.me"' >> yo && cp yo page.sh && cp yo finale.sh && rm yo
wget -O lull https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/expect.sh && cat lull >> finale.sh && rm lull
sudo bash finale.sh 
pagekite.py 8080 jhaji.pagekite.me &
sudo wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/test.sh 
sudo bash test.sh 
EOF
sudo cp new.sh /root
printf "root" | su - root -c " bash /root/new.sh "

             
             
             
