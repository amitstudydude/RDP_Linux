cd /
printf "root\nroot" | passwd root 
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z
yes A | 7z x *7z && rm *7z 
wget -O cli https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 && chmod +x ./cli 
./cli --url http://localhost:8080 &>> 8080 &
apt update  >>/dev/null
apt install expect >>/dev/null
apt install xrdp ssh openssh-server docker.io icewm firefox >>/dev/null 
docker run --name guacd -d  -p 4822:4822 guacamole/guacd
docker run --name guacamole -dit -p 8080:8080 ghcr.io/amitstudydude/guacamole
service ssh restart && sed -i '3 i PasswordAuthentication yes' /etc/ssh/sshd_config && sed -i '3 i PermitUserEnvironment yes' /etc/ssh/sshd_config && sed -i '3 i PermitRootLogin yes' /etc/ssh/sshd_config && service ssh restart
cat 8080 | sed '5!d' | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&/#/settings/preferences):' | sed -e 's/\[[^][]*\]//g' | sed 's:(:[guacamole]&:' &>> log.txt
while :; do cat log.txt ; sleep 3 ; done
