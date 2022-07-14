sudo apt install -y libev-dev libssl-dev
git clone --recursive https://github.com/zhaojh329/rtty.git
cd rtty && mkdir build && cd build
cmake .. && make install
sudo rtty -p 5912 -a -v -D -x
