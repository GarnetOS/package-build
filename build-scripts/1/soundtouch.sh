if [ -z "$old" ];
then
   exit
fi
wget https://gitlab.com/soundtouch/soundtouch/-/archive/2.3.0/soundtouch-2.3.0.tar.bz2

tar -xvf soundtouch-2.3.0.tar.bz2
cd soundtouch-2.3.0.
./bootstrap &&
./configure --prefix=/usr \
            --docdir=/usr/share/doc/soundtouch-2.3.0 &&
make
make install 
cd ..
rm soundtouch-2.3.0.tar.bz2
rm -rf soundtouch-2.3.0.2