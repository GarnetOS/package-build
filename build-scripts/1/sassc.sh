if [ -z "$old" ];
then
   exit
fi
wget https://github.com/sass/sassc/archive/3.6.2/sassc-3.6.2.tar.gz

wget https://github.com/sass/libsass/archive/3.6.5/libsass-3.6.5.tar.gz

tar -xvf sassc-3.6.2.tar.gz
cd sassc-3.6.2
tar -xf ../libsass-3.6.5.tar.gz &&
pushd libsass-3.6.5 &&

autoreconf -fi &&

./configure --prefix=/usr --disable-static &&
make
make install
popd &&
autoreconf -fi &&

./configure --prefix=/usr &&
make
make install


cd ..
rm sassc-3.6.2.tar.gz
rm -rf sassc-3.6.2