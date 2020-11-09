build-scripts/prepare.sh
wget http://anduin.linuxfromscratch.org/BLFS/compface/compface-1.5.2.tar.gz

tar -xvf compface-1.5.2.tar.gz
cd compface-1.5.2
./configure --prefix=/usr --mandir=/usr/share/man &&
make
make install &&
install -m755 -v xbm2xface.pl /usr/bin
cd ..
rm compface-1.5.2.tar.gz
rm -rfcompface-1