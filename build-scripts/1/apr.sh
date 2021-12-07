if [ -z "$old" ];
then
   exit
fi
wget https://archive.apache.org/dist/apr/apr-1.7.0.tar.bz2

tar -xvf apr-1.7.0.tar.bz2
cd apr-1.7.0.
sed -e "/shift/i \
\    if (xt->tm_mon < 0 || xt->tm_mon >= 12) return APR_EBADDATE;" \
    -i time/unix/time.c
./configure --prefix=/usr    \
            --disable-static \
            --with-installbuilddir=/usr/share/apr-1/build &&
make
make install
cd ..
rm apr-1.7.0.tar.bz2
rm -rf apr-1.7.0.