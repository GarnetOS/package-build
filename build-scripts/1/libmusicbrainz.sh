if [ -z "$old" ];
then
   exit
fi
wget http://ftp.musicbrainz.org/pub/musicbrainz/historical/libmusicbrainz-2.1.5.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/libmusicbrainz-2.1.5-missing-includes-1.patch

tar -xvf libmusicbrainz-2.1.5.tar.gz
cd libmusicbrainz-2.1.5
patch -Np1 -i ../libmusicbrainz-2.1.5-missing-includes-1.patch &&

CXXFLAGS="${CXXFLAGS:--O2 -g} -std=c++98" \
./configure --prefix=/usr --disable-static &&
make
(cd python && python2 setup.py build)
make install &&
install -v -m644 -D docs/mb_howto.txt \
    /usr/share/doc/libmusicbrainz-2.1.5/mb_howto.txt
(cd python && python2 setup.py install)
cd ..
rm libmusicbrainz-2.1.5.tar.gz
rm -rf libmusicbrainz-2.1.5