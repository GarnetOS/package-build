if [ -z "$old" ];
then
   exit
fi
wget ftp://ftp.stunnel.org/stunnel/archive/5.x/stunnel-5.60.tar.gz

tar -xvf stunnel-5.60.tar.gz
cd stunnel-5.60
groupadd -g 51 stunnel &&
useradd -c "stunnel Daemon" -d /var/lib/stunnel \
        -g stunnel -s /bin/false -u 51 stunnel
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-systemd    &&
make
make docdir=/usr/share/doc/stunnel-5.60 install
make cert
cd ..
rm stunnel-5.60.tar.gz
rm -rf stunnel-5.60