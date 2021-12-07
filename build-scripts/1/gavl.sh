if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/gmerlin/gavl-1.4.0.tar.gz

tar -xvf gavl-1.4.0.tar.gz
cd gavl-1.4.0
LIBS=-lm                      \
./configure --prefix=/usr     \
            --without-doxygen \
            --docdir=/usr/share/doc/gavl-1.4.0 &&
make
make install
cd ..
rm gavl-1.4.0.tar.gz
rm -rf gavl-1.4.0