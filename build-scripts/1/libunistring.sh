if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.10.tar.xz

tar -xvf libunistring-0.9.10.tar.xz
cd libunistring-0.9.10
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libunistring-0.9.10 &&
make
make install
cd ..
rm libunistring-0.9.10.tar.xz
rm -rf libunistring-0.9.10