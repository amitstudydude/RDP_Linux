su - root -c "mkdir -p /root/.config/rclone/ && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mv rclone.conf /root/.config/rclone "
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
mkdir Cloud && cd Cloud
mkdir Mega Teamdrive Drive cache
rclone mount Mega: /content/Cloud/Mega --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir '/content/Cloud/cache' --allow-other --daemon --transfers 100 --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s
rclone mount Teamdrive: /content/Cloud/Teamdrive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir '/content/Cloud/cache' --allow-other --daemon --transfers 100  --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s
rclone mount Drive: /content/Cloud/Drive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir '/content/Cloud/cache' --allow-other --daemon --transfers 100  --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s
cd && rm -rf Mega Teamdrive Drive cache
#rclone --user-agent "Mozilla" copy "/content/Cloud/Mega/" "/content/Cloud/Teamdrive/new" --transfers 200 --checkers 200 --stats-one-line --stats=5s -v 

