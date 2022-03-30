#/bin/bash/
rm ui.sh
printf "root/nroot" | sudo passwd 
#sudo nano /etc/apt/sources.list
#sudo nano /etc/ssh/sshd_config
sudo adduser user
sudo usermod -a -G sudo,adm user
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt update 
sudo apt upgrade -y
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/install.sh
sudo chmod +x install.sh
./install.sh
