#! /bin/bash
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.292.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.292.0/actions-runner-linux-x64-2.292.0.tar.gz 
echo "14839ba9f3da01abdd51d1eae0eb53397736473542a8fae4b7618d05a5af7bb5  actions-runner-linux-x64-2.292.0.tar.gz" | shasum -a 256 -c
sudo tar xzf ./actions-runner-linux-x64-2.292.0.tar.gz
printf " \n\n$token\n$token\n\n "| ./config.sh --url https://github.com/$repo --token $token
./run.sh 
