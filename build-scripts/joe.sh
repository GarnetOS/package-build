build-scripts/prepare.sh
wget https://downloads.sourceforge.net/joe-editor/joe-4.6.tar.gz
tar -xvf joe-4.6.tar.gz
cd joe-4.6
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/joe-4.6 &&
make
make install &&
install -vm 755 joe/util/{stringify,termidx,uniproc} /usr/bin
cd ..
rm joe-4.6.tar.gz
rm -rf joe-4.6
