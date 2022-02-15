if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz

tar -xvf libevent-2.1.12-stable.tar.gz
cd libevent-2.1.12-stable
sed -i 's/python/&3/' event_rpcgen.py
./configure --prefix=/usr --disable-static &&
make
doxygen Doxyfile
make install
install -v -m755 -d /usr/share/doc/libevent-2.1.12/api &&
cp      -v -R       doxygen/html/* \
                    /usr/share/doc/libevent-2.1.12/api


cd ..
rm libevent-2.1.12-stable.tar.gz
rm -rf libevent-2.1.12-stable