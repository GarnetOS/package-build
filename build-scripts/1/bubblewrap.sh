build-scripts/prepare.sh
wget https://github.com/projectatomic/bubblewrap/releases/download/v0.4.1/bubblewrap-0.4.1.tar.xz

tar -xvf bubblewrap-0.4.1.tar.xz
cd bubblewrap-0.4.1
./configure --prefix=/usr &&
make
make install
cd ..
rm bubblewrap-0.4.1.tar.xz
rm -rf bubblewrap-0.4.1