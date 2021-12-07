if [ -z "$old" ];
then
   exit
fi
wget https://www.libssh2.org/download/libssh2-1.9.0.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/libssh2-1.9.0-security_fixes-1.patch

tar -xvf libssh2-1.9.0.tar.gz
cd libssh2-1.9.0
patch -Np1 -i ../libssh2-1.9.0-security_fixes-1.patch &&
./configure --prefix=/usr --disable-static            &&
make
make install
cd ..
rm libssh2-1.9.0.tar.gz
rm -rf libssh2-1.9.0