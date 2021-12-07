if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/lcms/lcms2-2.12.tar.gz

tar -xvf lcms2-2.12.tar.gz
cd lcms2-2.12
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm lcms2-2.12.tar.gz
rm -rf lcms2-2.12