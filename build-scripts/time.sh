build-scripts/prepare.sh
wget https://ftp.gnu.org/gnu/time/time-1.9.tar.gz

tar -xvf time-1.9.tar.gz
cd time-1.9
./configure --prefix=/usr &&
make
make install
cd ..
rm time-1.9.tar.gz
rm -rftime-1