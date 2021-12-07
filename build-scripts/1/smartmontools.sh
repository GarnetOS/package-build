if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/smartmontools/smartmontools-7.2.tar.gz

tar -xvf smartmontools-7.2.tar.gz
cd smartmontools-7.2
./configure --prefix=/usr           \
            --sysconfdir=/etc       \
            --with-initscriptdir=no \
            --with-libsystemd=no    \
            --docdir=/usr/share/doc/smartmontools-7.2 &&
make
make install
cd ..
rm smartmontools-7.2.tar.gz
rm -rf smartmontools-7.2