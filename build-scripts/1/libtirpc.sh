if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.2.tar.bz2

tar -xvf libtirpc-1.3.2.tar.bz2
cd libtirpc-1.3.2.
./configure --prefix=/usr                                   \
            --sysconfdir=/etc                               \
            --disable-static                                \
            --disable-gssapi                                &&
make
make install
cd ..
rm libtirpc-1.3.2.tar.bz2
rm -rf libtirpc-1.3.2.