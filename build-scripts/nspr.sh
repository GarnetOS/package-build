build-scripts/prepare.sh
wget https://archive.mozilla.org/pub/nspr/releases/v4.27/src/nspr-4.27.tar.gz
tar -xvf nspr-4.27.tar.gz
cd nspr-4.27
cd nspr                                                     &&
sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in &&
sed -i 's#$(LIBRARY) ##'            config/rules.mk         &&

./configure --prefix=/usr \
            --with-mozilla \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make
make install
cd ..
rm nspr-4.27.tar.gz
rm -rf nspr-4.27
