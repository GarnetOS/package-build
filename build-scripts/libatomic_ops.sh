build-scripts/prepare.sh
wget https://github.com/ivmai/libatomic_ops/releases/download/v7.6.10/libatomic_ops-7.6.10.tar.gz
tar -xvf libatomic_ops-7.6.10.tar.gz
cd libatomic_ops-7.6.10
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --docdir=/usr/share/doc/libatomic_ops-7.6.10 &&
make
make install
cd ..
rm libatomic_ops-7.6.10.tar.gz
rm -rf libatomic_ops-7.6.10
