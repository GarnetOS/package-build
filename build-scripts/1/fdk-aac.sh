build-scripts/prepare.sh
wget https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.1.tar.gz
tar -xvf fdk-aac-2.0.1.tar.gz
cd fdk-aac-2.0.1
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm fdk-aac-2.0.1.tar.gz
rm -rf fdk-aac-2.0.1
