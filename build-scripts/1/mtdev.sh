if [ -z "$old" ];
then
   exit
fi
wget https://bitmath.org/code/mtdev/mtdev-1.1.6.tar.bz2

tar -xvf mtdev-1.1.6.tar.bz2
cd mtdev-1.1.6.
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm mtdev-1.1.6.tar.bz2
rm -rf mtdev-1.1.6.