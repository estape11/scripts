sudo apt-get install gawk wget git diffstat unzip texinfo build-essential chrpath socat cpio python python-pexpect python3-pip python3-pexpect libsdl1.2-dev xterm make xsltproc docbook-utils fop dblatex xmlto python-git libssl-dev pv -y

mkdir -p Documents/rk-yocto-bsp
cd rk-yocto-bsp
repo init --repo-url=https://github.com/rockchip-linux/repo -u https://github.com/rockchip-linux/manifests -b yocto -m pyro.xml
repo sync
