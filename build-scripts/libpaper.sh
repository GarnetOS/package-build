build-scripts/prepare.sh
wget http://ftp.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.24+nmu5.tar.gz
tar -xvf libpaper_1.1.24+nmu5.tar.gz
cd libpaper_1.1.24+nmu5
autoreconf -fi                &&
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static &&
make
make install &&
mkdir -vp /etc/libpaper.d
cd ..
rm libpaper_1.1.24+nmu5.tar.gz
cat > /etc/papersize << "EOF"
a4
EOF
rm -rf libpaper_1.1.24+nmu5.tar.gz
