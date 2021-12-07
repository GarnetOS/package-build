if [ -z "$old" ];
then
   exit
fi
wget https://dist.libuv.org/dist/v1.42.0/libuv-v1.42.0.tar.gz

tar -xvf libuv-v1.42.0.tar.gz
cd libuv-v1.42.0
sh autogen.sh                              &&
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libuv-v1.42.0.tar.gz
rm -rf libuv-v1.42.0