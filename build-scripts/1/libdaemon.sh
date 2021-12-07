if [ -z "$old" ];
then
   exit
fi
wget http://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz

tar -xvf libdaemon-0.14.tar.gz
cd libdaemon-0.14
./configure --prefix=/usr --disable-static &&
make
make -C doc doxygen
make docdir=/usr/share/doc/libdaemon-0.14 install
install -v -m755 -d /usr/share/doc/libdaemon-0.14/reference/html &&
install -v -m644 doc/reference/html/* /usr/share/doc/libdaemon-0.14/reference/html &&
install -v -m644 doc/reference/man/man3/* /usr/share/man/man3
cd ..
rm libdaemon-0.14.tar.gz
rm -rf libdaemon-0.14