su - root -c "wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mkdir -p /root/.config/rclone/ && cp rclone.conf /root/.config/rclone "
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
rclone lsd Teamdrive:
mkdir Cloud && cd Cloud
mkdir Mega Teamdrive Drive
rclone mount Mega: /content/Cloud/Mega --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir '/content/Cloud/cache' --allow-other --daemon 
rclone mount Teamdrive: /content/Cloud/Teamdrive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir '/content/Cloud/cache' --allow-other --daemon 
rclone mount Drive: /content/Cloud/Drive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir '/content/Cloud/cache' --allow-other --daemon 
cd && rm Mega Teamdrive Drive cache

rclone --user-agent "Mozilla" copy "/content/Cloud/Mega/" "/content/Cloud/Teamdrive/new" --transfers 20 --checkers 20 --stats-one-line --stats=5s -v 


#--buffer-size 256M --transfers 10 --vfs-read-chunk-size 500M --vfs-cache-max-size 50G --vfs-cache-max-age 0h0m1s --vfs-cache-poll-interval 0m1s 


