#/bin/bash/
sudo rm /etc/apt/sources.list
sudo rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list
sudo mv sources.list /etc/apt
sudo apt update
rmdir ./teamdrive
mkdir ./teamdrive
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt install google-drive-ocamlfuse -y
google-drive-ocamlfuse -cc
google-drive-ocamlfuse -label teamdrive 
rm ~/.gdfuse/teamdrive/config config
wget  https://raw.githubusercontent.com/amitstudydude/RDP_Linux/6b6cc0106c46175aa44b77156386f63835e4d564/config
cp config ~/.gdfuse/teamdrive
google-drive-ocamlfuse -label teamdrive ./teamdrive
pulseaudio

