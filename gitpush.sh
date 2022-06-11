cd .github/workflows
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
date >> .md && sleep 1
git config --global user.name 'amitstudydude'
git config --global user.email 'amitstudydude@users.noreply.github.com'
git remote set-url origin https://x-access-token:$token@github.com/$repo
git checkout "$ref"
git add -A
git commit -am "Automated report"
git push origin main
