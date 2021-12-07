if [ -z "$old" ];
then
   exit
fi
wget https://github.com/fontforge/libuninameslist/releases/download/20210626/libuninameslist-dist-20210626.tar.gz

tar -xvf libuninameslist-dist-20210626.tar.gz
cd libuninameslist-dist-20210626
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libuninameslist-dist-20210626.tar.gz
rm -rf libuninameslist-dist-20210626