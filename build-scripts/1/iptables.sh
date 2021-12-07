if [ -z "$old" ];
then
   exit
fi
wget http://www.netfilter.org/projects/iptables/files/iptables-1.8.7.tar.bz2

tar -xvf iptables-1.8.7.tar.bz2
cd iptables-1.8.7.
./configure --prefix=/usr      \
            --disable-nftables \
            --enable-libipq    &&
make
make install
make install-iptables
cd ..
rm iptables-1.8.7.tar.bz2
rm -rf iptables-1.8.7.