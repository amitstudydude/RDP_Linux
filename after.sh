#/bin/bash/
pulseaudio -k
mkdir ./teamdrive
google-drive-ocamlfuse -cc
google-drive-ocamlfuse -label teamdrive 
wget https://download.nomachine.com/download/7.9/Linux/nomachine_7.9.2_1_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./*.deb -y
rm ~/.gdfuse/teamdrive/config config
wget  https://raw.githubusercontent.com/amitstudydude/RDP_Linux/6b6cc0106c46175aa44b77156386f63835e4d564/config
cp config ~/.gdfuse/teamdrive
google-drive-ocamlfuse -label teamdrive ./teamdrive
sudo apt upgrade -y
rm *
