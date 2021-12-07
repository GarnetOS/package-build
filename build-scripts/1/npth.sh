if [ -z "$old" ];
then
   exit
fi
wget  https://www.gnupg.org/ftp/gcrypt/npth/npth-1.6.tar.bz2

tar -xvf npth-1.6.tar.bz2
cd npth-1.6.
./configure --prefix=/usr &&
make
make install
cd ..
rm npth-1.6.tar.bz2
rm -rf npth-1.6.