build-scripts/prepare.sh
wget https://gitlab.com/soundtouch/soundtouch/-/archive/2.1.2/soundtouch-2.1.2.tar.bz2

tar -xvf soundtouch-2.1.2.tar.bz2
cd soundtouch-2.1.2.
./bootstrap &&
./configure --prefix=/usr \
            --docdir=/usr/share/doc/soundtouch-2.1.2 &&
make
make install
cd ..
rm soundtouch-2.1.2.tar.bz2
rm -rf soundtouch-2.1.2