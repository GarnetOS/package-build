build-scripts/prepare.sh
wget https://github.com/knik0/faac/archive/1_30/faac-1_30.tar.gz

tar -xvf faac-1_30.tar.gz
cd faac-1_30
./bootstrap                                &&
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm faac-1_30.tar.gz
rm -rf faac-1_30