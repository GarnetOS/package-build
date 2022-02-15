if [ -z "$old" ];
then
   exit
fi
wget https://notroj.github.io/neon/neon-0.31.2.tar.gz

tar -xvf neon-0.31.2.tar.gz
cd neon-0.31.2
./configure --prefix=/usr    \
            --with-ssl       \
            --enable-shared  \
            --disable-static &&
make
make install
cd ..
rm neon-0.31.2.tar.gz
rm -rf neon-0.31.2