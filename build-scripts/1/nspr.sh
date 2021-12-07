if [ -z "$old" ];
then
   exit
fi
wget https://archive.mozilla.org/pub/nspr/releases/v4.32/src/nspr-4.32.tar.gz

tar -xvf nspr-4.32.tar.gz
cd nspr-4.32
cd nspr                                                     &&
sed -ri '/^RELEASE/s/^/#/' pr/src/misc/Makefile.in &&
sed -i 's#$(LIBRARY) ##'   config/rules.mk         &&

./configure --prefix=/usr \
            --with-mozilla \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make
make install
cd ..
rm nspr-4.32.tar.gz
rm -rf nspr-4.32