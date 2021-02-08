build-scripts/prepare.sh
install_deps libcddb
if [ -z "$old" ];
then
       exit
fi
wget https://ftp.gnu.org/gnu/libcdio/libcdio-2.1.0.tar.bz2

wget https://ftp.gnu.org/gnu/libcdio/libcdio-paranoia-10.2+2.0.1.tar.bz2

tar -xvf libcdio-2.1.0.tar.bz2
cd libcdio-2.1.0

./configure --prefix=/usr --disable-static &&
make
make install
tar -xf ../libcdio-paranoia-10.2+2.0.1.tar.bz2 &&
cd libcdio-paranoia-10.2+2.0.1 &&

./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libcdio-2.1.0.tar.bz2
rm -rf libcdio-2.1.0
