if [ -z "$old" ];
then
   exit
fi
wget https://digip.org/jansson/releases/jansson-2.13.1.tar.gz

tar -xvf jansson-2.13.1.tar.gz
cd jansson-2.13.1
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm jansson-2.13.1.tar.gz
rm -rf jansson-2.13.1
