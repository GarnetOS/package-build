PCRE
if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/swig/swig-4.0.2.tar.gz

tar -xvf swig-4.0.2.tar.gz
cd swig-4.0.2
./configure --prefix=/usr \
            --without-maximum-compile-warnings &&
make
make install &&
install -v -m755 -d /usr/share/doc/swig-4.0.2 &&
cp -v -R Doc/* /usr/share/doc/swig-4.0.2
cd ..
rm swig-4.0.2.tar.gz
rm -rf swig-4.0.2