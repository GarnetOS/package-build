if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/lame/lame-3.100.tar.gz

tar -xvf lame-3.100.tar.gz
cd lame-3.100
./configure --prefix=/usr --enable-mp3rtp --disable-static &&
make
make pkghtmldir=/usr/share/doc/lame-3.100 install
cd ..
rm lame-3.100.tar.gz
rm -rf lame-3.100