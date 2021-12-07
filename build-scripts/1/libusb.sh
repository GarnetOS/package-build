if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libusb/libusb/releases/download/v1.0.24/libusb-1.0.24.tar.bz2

tar -xvf libusb-1.0.24.tar.bz2
cd libusb-1.0.24.
./configure --prefix=/usr --disable-static &&
make
sed -i "s/^TCL_SUBST/#&/; s/wide//" doc/doxygen.cfg &&
make -C doc docs
make install
install -v -d -m755 /usr/share/doc/libusb-1.0.24/apidocs &&
install -v -m644    doc/api-1.0/* \
                    /usr/share/doc/libusb-1.0.24/apidocs
cd ..
rm libusb-1.0.24.tar.bz2
rm -rf libusb-1.0.24.