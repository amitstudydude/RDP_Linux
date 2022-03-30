#/bin/bash/
rm *
yes root | sudo passwd 
#sudo nano /etc/apt/sources.list
#sudo nano /etc/ssh/sshd_config
yes root | sudo adduser root
sudo usermod -a -G sudo,adm root
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt update 
sudo apt --fix-broken install
sudo apt upgrade -y
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/install.sh
bash *.sh
