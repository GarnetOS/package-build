if [ -z "$old" ];
then
   exit
fi
wget https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz

tar -xvf dosfstools-4.2.tar.gz
cd dosfstools-4.2
./configure --prefix=/usr            \
            --enable-compat-symlinks \
            --mandir=/usr/share/man  \
            --docdir=/usr/share/doc/dosfstools-4.2 &&
make
make install
cd ..
rm dosfstools-4.2.tar.gz
rm -rf dosfstools-4.2.1
