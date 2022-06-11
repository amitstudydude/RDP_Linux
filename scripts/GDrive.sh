#/bin/bash/
printf " \n " | sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse
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
