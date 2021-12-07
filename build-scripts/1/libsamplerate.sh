if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libsndfile/libsamplerate/releases/download/0.2.1/libsamplerate-0.2.1.tar.bz2

tar -xvf libsamplerate-0.2.1.tar.bz2
cd libsamplerate-0.2.1.
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libsamplerate-0.2.1 &&
make
make install
cd ..
rm libsamplerate-0.2.1.tar.bz2
rm -rf libsamplerate-0.2.1.