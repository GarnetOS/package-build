if [ -z "$old" ];
then
   exit
fi
wget https://www.tcpdump.org/release/libpcap-1.10.1.tar.gz

tar -xvf libpcap-1.10.1.tar.gz
cd libpcap-1.10.1
./configure --prefix=/usr &&
make
sed -i '/INSTALL_DATA.*libpcap.a\|RANLIB.*libpcap.a/ s/^/#/' Makefile
make install
cd ..
rm libpcap-1.10.1.tar.gz
rm -rf libpcap-1.10.1