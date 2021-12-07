if [ -z "$old" ];
then
   exit
fi
wget https://ftp.pcre.org/pub/pcre/pcre-8.45.tar.bz2

tar -xvf pcre-8.45.tar.bz2
cd pcre-8.45.
./configure --prefix=/usr                     \
            --docdir=/usr/share/doc/pcre-8.45 \
            --enable-unicode-properties       \
            --enable-pcre16                   \
            --enable-pcre32                   \
            --enable-pcregrep-libz            \
            --enable-pcregrep-libbz2          \
            --enable-pcretest-libreadline     \
            --disable-static                 &&
make
make install
cd ..
rm pcre-8.45.tar.bz2
rm -rf pcre-8.45.