build-scripts/prepare.sh
wget https://github.com/fontforge/libuninameslist/releases/download/20200413/libuninameslist-dist-20200413.tar.gz

tar -xvf libuninameslist-dist-20200413.tar.gz
cd libuninameslist-dist-20200413
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libuninameslist-dist-20200413.tar.gz
rm -rf libuninameslist-dist-20200413