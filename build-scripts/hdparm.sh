build-scripts/prepare.sh
wget https://downloads.sourceforge.net/hdparm/hdparm-9.58.tar.gz

tar -xvf hdparm-9.58.tar.gz
cd hdparm-9.58
make
make install
cd ..
rm hdparm-9.58.tar.gz
rm -rfhdparm-9