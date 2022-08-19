**aria2c**
aria2c --dir=/drives/Teamdrive/ --allow-overwrite=true  https://nya.iss.one/download/1225621.torrent


**Download to fake**
curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/download%20to%20fake | bash 


**Lint**
curl https://raw.githubusercontent.com/amitstudydude/guacamole/main/Lint | bash

**SSH**
service ssh restart && sed -i '3 i PasswordAuthentication yes' /etc/ssh/sshd_config && sed -i '3 i PermitUserEnvironment yes' /etc/ssh/sshd_config && sed -i '3 i PermitRootLogin yes' /etc/ssh/sshd_config  && service ssh restart


**Installing docker**
curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/Install-docker | sudo bash

**Rclone**
curl https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/rclonemount.sh | sudo bash



**Cloudfared**
wget -O cli https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 && \ 
chmod +x ./cli && ./cli --url http://localhost:8080/wetty &>> cat.txt &




**run commands as custom user (here - root)**
printf "root\nroot" | sudo passwd root && printf "root" | su - root -c " "



**Inspect Element**
javascript:(function () { var script = document.createElement('script'); script.src="//cdn.jsdelivr.net/npm/eruda"; document.body.appendChild(script); script.onload = function () { eruda.init() } })();

**force del directory**
rm -rf *

**cloudflared**
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo apt install -y ./*.deb
cloudflared tunnel --url http://localhost:8080/guacamole


**guacamole**
login/passwd=guacadmin


**dns**
https://dns.controld.com/15x4zhat86m
15x4zhat86m.dns.controld.com

**no animation**
gsettings set org.gnome.desktop.interface enable-animations false 

**share**
python3 -m http.server 6080

**redirect port1(lt-link) to port2 (http)**
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 1080 -j REDIRECT --to-port 2000 

**minimal install**
apt update && apt install sudo wget unzip curl -y && yes root | passwd root && sudo DEBIAN_FRONTEND=noninteractive apt install tzdata keyboard-configuration -y && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo apt install -y ./*.deb && rm *.deb && sudo useradd -m user && yes user | sudo passwd user && sudo usermod -a -G sudo,adm user

**chrome_remote_desktop** 
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo apt install -y ./*.deb && rm *.deb 


**base.7z**
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z

**google.7z**
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z

**autoclick.sh**
sudo apt update && sudo apt install xdotool gedit -y 
xdotool getmouselocation
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/autoclick.sh && bash autoclick.sh



**To search for files in a location**
find /usr/bin/ -iname *session*


**To calculate elasped time**
import time
start_time = time.time()
!sleep 10
end_time = time.time()
time_elapsed = (end_time - start_time)
print(time_elapsed)


**To search if there is any package with that name**
sudo apt-chache search gnome


**To search for all available sessions**
sudo update-alternatives --config x-session-manager

**TO SEARCH FOR IP**
ifconfig.me

**Install Pagekite**
curl -O https://pagekite.net/pk/pagekite.py && sudo chmod +x pagekite.py && sudo mv -f pagekite.py /usr/local/bin


**Uninstall Pagekite**
sudo rm $(which pagekite.py) $(which pagekite-gtk.py)



