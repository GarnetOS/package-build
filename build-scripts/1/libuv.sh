build-scripts/prepare.sh
wget https://dist.libuv.org/dist/v1.38.1/libuv-v1.38.1.tar.gz
tar -xvf libuv-v1.38.1.tar.gz
cd libuv-v1.38.1
sh autogen.sh
./configure --prefix=/usr --disable-static
make
make install
cd ..
rm libuv-v1.38.1.tar.gz
rm -rf libuv-v1.38.1
