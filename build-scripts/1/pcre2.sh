if [ -z "$old" ];
then
   exit
fi
wget https://ftp.pcre.org/pub/pcre/pcre2-10.37.tar.bz2

tar -xvf pcre2-10.37.tar.bz2
cd pcre2-10.37.
./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/pcre2-10.37 \
            --enable-unicode                    \
            --enable-jit                        \
            --enable-pcre2-16                   \
            --enable-pcre2-32                   \
            --enable-pcre2grep-libz             \
            --enable-pcre2grep-libbz2           \
            --enable-pcre2test-libreadline      \
            --disable-static                    &&
make
make install
cd ..
rm pcre2-10.37.tar.bz2
rm -rf pcre2-10.37.