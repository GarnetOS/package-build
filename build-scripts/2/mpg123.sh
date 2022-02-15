alsa-lib
if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/mpg123/mpg123-1.28.2.tar.bz2

tar -xvf mpg123-1.28.2.tar.bz2
cd mpg123-1.28.2.
./configure --prefix=/usr &&
make
make install
cd ..
rm mpg123-1.28.2.tar.bz2
rm -rf mpg123-1.28.2.