libtirpc
if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/rpcbind/rpcbind-1.2.6.tar.bz2

wget https://www.linuxfromscratch.org/patches/blfs/11.0/rpcbind-1.2.6-vulnerability_fixes-1.patch

tar -xvf rpcbind-1.2.6.tar.bz2
cd rpcbind-1.2.6.
sed -i "/servname/s:rpcbind:sunrpc:" src/rpcbind.c
patch -Np1 -i ../rpcbind-1.2.6-vulnerability_fixes-1.patch &&

./configure --prefix=/usr                                  \
            --bindir=/usr/sbin                             \
            --with-rpcuser=root                            \
            --enable-warmstarts                            \
            --without-systemdsystemunitdir                 &&
make
make install
make install-rpcbind
cd ..
rm rpcbind-1.2.6.tar.bz2
rm -rf rpcbind-1.2.6.