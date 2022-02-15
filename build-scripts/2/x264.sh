NASM
if [ -z "$old" ];
then
   exit
fi
wget https://anduin.linuxfromscratch.org/BLFS/x264/x264-20210814.tar.xz

tar -xvf x264-20210814.tar.xz
cd x264-20210814
./configure --prefix=/usr \
            --enable-shared \
            --disable-cli &&
make
make install
cd ..
rm x264-20210814.tar.xz
rm -rf x264-20210814