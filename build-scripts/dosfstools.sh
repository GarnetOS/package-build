build-scripts/prepare.sh
wget https://github.com/dosfstools/dosfstools/releases/download/v4.1/dosfstools-4.1.tar.xz
tar -xvf dosfstools-4.1.tar.xz
cd dosfstools-4.1
./configure --prefix=/               \
            --enable-compat-symlinks \
            --mandir=/usr/share/man  \
            --docdir=/usr/share/doc/dosfstools-4.1 &&
make
make install
cd ..
rm dosfstools-4.1.tar.xz
rm -rf dosfstools-4.1
