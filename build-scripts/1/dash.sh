if [ -z "$old" ];
then
   exit
fi
wget http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.11.4.tar.gz

tar -xvf dash-0.5.11.4.tar.gz
cd dash-0.5.11.4
./configure --bindir=/bin --mandir=/usr/share/man &&
make
make install
ln -svf dash /bin/sh
cd ..
rm dash-0.5.11.4.tar.gz
rm -rf dash-0.5.11.4