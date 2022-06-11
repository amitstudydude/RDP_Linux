
cd .github/workflows
sleep 5
sudo unlink /etc/localtime
sleep 5
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
sleep 5
date > .md
sleep 5
git config --global user.name 'amitstudydude'
sleep 5
git config --global user.email 'amitstudydude@users.noreply.github.com'
sleep 5
git remote set-url origin https://x-access-token:$token@github.com/$repo
sleep 5
git checkout "$ref"
sleep 5
git add -A
sleep 5
git commit -am "Automated report"
sleep 6
git push origin main
