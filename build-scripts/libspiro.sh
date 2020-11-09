build-scripts/prepare.sh
wget https://github.com/fontforge/libspiro/releases/download/20200505/libspiro-dist-20200505.tar.gz

tar -xvf libspiro-dist-20200505.tar.gz
cd libspiro-dist-20200505
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libspiro-dist-20200505.tar.gz
rm -rflibspiro-dist-20200505