build-scripts/prepare.sh
wget http://sg.danny.cz/sg/p/sg3_utils-1.45.tar.xz

tar -xvf sg3_utils-1.45.tar.xz
cd sg3_utils-1.45
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm sg3_utils-1.45.tar.xz
rm -rf sg3_utils-1.45