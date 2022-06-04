#! /bin/bash
sudo mkdir actions-runner && cd actions-runner
sudo curl -o actions-runner-linux-x64-2.291.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.291.1/actions-runner-linux-x64-2.291.1.tar.gz
echo "1bde3f2baf514adda5f8cf2ce531edd2f6be52ed84b9b6733bf43006d36dcd4c  actions-runner-linux-x64-2.291.1.tar.gz" | shasum -a 256 -c
sudo tar xzf ./actions-runner-linux-x64-2.291.1.tar.gz
printf '\n\n${{ github.event.inputs.token }}\n${{ github.event.inputs.token }}\n\n' | ./config.sh --url https://github.com/${{ github.event.inputs.repo }} --token ${{ github.event.inputs.token }}
./run.sh 
