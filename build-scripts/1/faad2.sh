if [ -z "$old" ];
then
   exit
fi
wget https://github.com/knik0/faad2/archive/2_10_0/faad2-2_10_0.tar.gz

wget http://www.nch.com.au/acm/sample.aac

tar -xvf faad2-2_10_0.tar.gz
cd faad2-2_10_0
./bootstrap                                &&
./configure --prefix=/usr --disable-static &&
make
./frontend/faad -o sample.wav ../sample.aac
aplay sample.wav
make install
cd ..
rm faad2-2_10_0.tar.gz
rm -rf faad2-2_10_0