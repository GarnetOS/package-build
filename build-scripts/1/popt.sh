if [ -z "$old" ];
then
   exit
fi
wget http://ftp.rpm.org/popt/releases/popt-1.x/popt-1.18.tar.gz

tar -xvf popt-1.18.tar.gz
cd popt-1.18
./configure --prefix=/usr --disable-static &&
make
sed -i 's@\./@src/@' Doxyfile &&
doxygen
make install
install -v -m755 -d /usr/share/doc/popt-1.18 &&
install -v -m644 doxygen/html/* /usr/share/doc/popt-1.18
cd ..
rm popt-1.18.tar.gz
rm -rf popt-1.18