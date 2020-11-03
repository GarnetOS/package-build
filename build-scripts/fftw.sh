build-scripts/prepare.sh
wget http://www.fftw.org/fftw-3.3.8.tar.gz
tar -xvf fftw-3.3.8.tar.gz
cd fftw-3.3.8
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     &&
make
make install
make clean &&
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     \
            --enable-float   &&
make
make install
make clean &&
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-long-double &&
make
make install
cd ..
rm fftw-3.3.8.tar.gz
rm -rf fftw-3.3.8
