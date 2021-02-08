build-scripts/prepare.sh
wget http://files.libburnia-project.org/releases/libisofs-1.5.2.tar.gz

tar -xvf libisofs-1.5.2.tar.gz
cd libisofs-1.5.2
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libisofs-1.5.2.tar.gz
rm -rf libisofs-1.5.2