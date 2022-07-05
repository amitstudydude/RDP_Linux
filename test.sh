sudo apt install python3 expect ufw
sudo ufw enable && sudo ufw allow 6080
cd .. && pwd && python3 -m http.server 6080 &
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/jhaji.exp
curl -O https://pagekite.net/pk/pagekite.py && sudo chmod +x pagekite.py && sudo mv -f pagekite.py /usr/local/bin
echo " expect jhaji.exp & " > test.sh
echo " sleep 10 && bash test.sh " >> test.sh
bash test.sh
