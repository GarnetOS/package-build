Apr
if [ -z "$old" ];
then
   exit
fi
wget https://archive.apache.org/dist/apr/apr-util-1.6.1.tar.bz2

tar -xvf apr-util-1.6.1.tar.bz2
cd apr-util-1.6.1.
./configure --prefix=/usr       \
            --with-apr=/usr     \
            --with-gdbm=/usr    \
            --with-openssl=/usr \
            --with-crypto &&
make
make install
cd ..
rm apr-util-1.6.1.tar.bz2
rm -rf apr-util-1.6.1.