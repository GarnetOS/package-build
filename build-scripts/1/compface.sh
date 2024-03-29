if [ -z "$old" ];
then
   exit
fi
wget https://anduin.linuxfromscratch.org/BLFS/compface/compface-1.5.2.tar.gz

tar -xvf compface-1.5.2.tar.gz
cd compface-1.5.2
./configure --prefix=/usr --mandir=/usr/share/man &&
make
make install &&
install -m755 -v xbm2xface.pl /usr/bin


cd ..
rm compface-1.5.2.tar.gz
rm -rf compface-1.5.2