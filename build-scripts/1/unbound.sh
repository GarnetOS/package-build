if [ -z "$old" ];
then
   exit
fi
wget https://nlnetlabs.nl/downloads/unbound/unbound-1.13.2.tar.gz

tar -xvf unbound-1.13.2.tar.gz
cd unbound-1.13.2
groupadd -g 88 unbound &&
useradd -c "Unbound DNS Resolver" -d /var/lib/unbound -u 88 \
        -g unbound -s /bin/false unbound
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --with-pidfile=/run/unbound.pid &&
make
make doc
make install &&
mv -v /usr/sbin/unbound-host /usr/bin/
install -v -m755 -d /usr/share/doc/unbound-1.13.2 &&
install -v -m644 doc/html/* /usr/share/doc/unbound-1.13.2
echo "nameserver 127.0.0.1" > /etc/resolv.conf
sed -i '/request /i\supersede domain-name-servers 127.0.0.1;' \
       /etc/dhcp/dhclient.conf
unbound-anchor
make install-unbound


cd ..
rm unbound-1.13.2.tar.gz
rm -rf unbound-1.13.2