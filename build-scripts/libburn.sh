build-scripts/prepare.sh
wget http://files.libburnia-project.org/releases/libburn-1.5.2.tar.gz

tar -xvf libburn-1.5.2.tar.gz
cd libburn-1.5.2
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libburn-1.5.2.tar.gz
rm -rf libburn-1.5.2