#/bin/bash/
sudo rm /etc/apt/sources.list
sudo rm *
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/sources.list
sudo mv sources.list /etc/apt
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041
sudo apt update
mkdir ./teamdrive
mkdir ./gdrive
sudo apt-get update
sudo apt install google-drive-ocamlfuse -y
google-drive-ocamlfuse -cc
google-drive-ocamlfuse ./gdrive
google-drive-ocamlfuse -label teamdrive 
rm ~/.gdfuse/teamdrive/config config
wget  https://raw.githubusercontent.com/amitstudydude/RDP_Linux/6b6cc0106c46175aa44b77156386f63835e4d564/config
cp config ~/.gdfuse/teamdrive
google-drive-ocamlfuse -label teamdrive ./teamdrive
cd ./gdrive
pulseaudio

