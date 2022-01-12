FLAC Opus libvorbis
if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libsndfile/libsndfile/releases/download/1.0.31/libsndfile-1.0.31.tar.bz2

tar -xvf libsndfile-1.0.31.tar.bz2
cd libsndfile-1.0.31.
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libsndfile-1.0.31 &&
make
make install
cd ..
rm libsndfile-1.0.31.tar.bz2
rm -rf libsndfile-1.0.31.