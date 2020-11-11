build-scripts/prepare.sh
wget https://netfilter.org/projects/libmnl/files/libmnl-1.0.4.tar.bz2

tar -xvf libmnl-1.0.4.tar.bz2
cd libmnl-1.0.4.
./configure --prefix=/usr &&
make
make install                 &&
mv /usr/lib/libmnl.so.* /lib &&
ln -sfv ../../lib/$(readlink /usr/lib/libmnl.so) /usr/lib/libmnl.so
cd ..
rm libmnl-1.0.4.tar.bz2
rm -rf libmnl-1.0.4.