if [ -z "$old" ];
then
   exit
fi
wget https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.5.1.tar.bz2

tar -xvf alsa-lib-1.2.5.1.tar.bz2
cd alsa-lib-1.2.5.1.
./configure &&
make
make doc
make install
install -v -d -m755 /usr/share/doc/alsa-lib-1.2.5.1/html/search &&
install -v -m644 doc/doxygen/html/*.* \
                /usr/share/doc/alsa-lib-1.2.5.1/html &&
install -v -m644 doc/doxygen/html/search/* \
                /usr/share/doc/alsa-lib-1.2.5.1/html/search
cd ..
rm alsa-lib-1.2.5.1.tar.bz2
rm -rf alsa-lib-1.2.5.1.