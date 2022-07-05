sudo apt install python3 expect ufw
sudo ufw enable && sudo ufw allow 8080
cd .. && pwd && python3 -m http.server 6080 &
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/jhaji.exp
curl -O https://pagekite.net/pk/pagekite.py && sudo chmod +x pagekite.py && sudo mv -f pagekite.py /usr/local/bin
expect jhaji.exp 
echo " pagekite.py 8080 jhaji.pagekite.me & " > pagekite.sh
echo " sleep 10 && bash pagekite.sh " >> pagekite.sh
bash pagekite.sh
