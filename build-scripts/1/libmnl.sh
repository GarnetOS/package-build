if [ -z "$old" ];
then
   exit
fi
wget https://netfilter.org/projects/libmnl/files/libmnl-1.0.4.tar.bz2

tar -xvf libmnl-1.0.4.tar.bz2
cd libmnl-1.0.4.
./configure --prefix=/usr &&
make
make install
cd ..
rm libmnl-1.0.4.tar.bz2
rm -rf libmnl-1.0.4.