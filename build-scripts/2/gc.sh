build-scripts/prepare.sh
install_deps libatomic_ops
if [ -z "$old" ];
then
       exit
wget https://www.hboehm.info/gc/gc_source/gc-8.0.4.tar.gz

tar -xvf gc-8.0.4.tar.gz
cd gc-8.0.4
./configure --prefix=/usr      \
            --enable-cplusplus \
            --disable-static   \
            --docdir=/usr/share/doc/gc-8.0.4 &&
make
make install &&
install -v -m644 doc/gc.man /usr/share/man/man3/gc_malloc.3
cd ..
rm gc-8.0.4.tar.gz
rm -rf gc-8.0.4
