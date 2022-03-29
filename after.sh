#/bin/bash/
pulseaudio -k
mkdir /home/user/teamdrive
google-drive-ocamlfuse -cc
google-drive-ocamlfuse -label teamdrive 
rm ~/.gdfuse/teamdrive/config
cp config ~/.gdfuse/teamdrive
google-drive-ocamlfuse -label teamdrive /home/user/teamdrive
