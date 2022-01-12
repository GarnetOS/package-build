sqlite
if [ -z "$old" ];
then
   exit
fi
wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tar.xz

tar -xvf Python-3.9.6.tar.xz
cd Python-3.9.6
CXX="/usr/bin/g++"               \
./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --with-system-ffi    \
            --with-ensurepip=yes \
            --enable-optimizations &&
make
make install
cd ..
rm Python-3.9.6.tar.xz
rm -rf Python-3.9.6