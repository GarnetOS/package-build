build-scripts/prepare.sh
wget https://github.com/knik0/faad2/archive/2_9_2/faad2-2_9_2.tar.gz

tar -xvf faad2-2_9_2.tar.gz
cd faad2-2_9_2
./bootstrap                                &&
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm faad2-2_9_2.tar.gz
rm -rf faad2-2_9_2