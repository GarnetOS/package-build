build-scripts/prepare.sh
wget http://www.rarlab.com/rar/unrarsrc-5.9.4.tar.gz

tar -xvf unrarsrc-5.9.4.tar.gz
cd unrar
make -f makefile
install -v -m755 unrar /usr/bin
cd ..
rm unrarsrc-5.9.4.tar.gz
rm -rf unrar