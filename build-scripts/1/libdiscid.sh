if [ -z "$old" ];
then
   exit
fi
wget http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid/libdiscid-0.6.2.tar.gz

tar -xvf libdiscid-0.6.2.tar.gz
cd libdiscid-0.6.2
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libdiscid-0.6.2.tar.gz
rm -rf libdiscid-0.6.2