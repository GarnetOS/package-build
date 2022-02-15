libtirpc
if [ -z "$old" ];
then
   exit
fi
wget https://www.dovecot.org/releases/2.3/dovecot-2.3.16.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/dovecot-2.3.16-lua_fixes-1.patch

tar -xvf dovecot-2.3.16.tar.gz
cd dovecot-2.3.16
groupadd -g 42 dovecot &&
useradd -c "Dovecot unprivileged user" -d /dev/null -u 42 \
        -g dovecot -s /bin/false dovecot &&
groupadd -g 43 dovenull &&
useradd -c "Dovecot login user" -d /dev/null -u 43 \
        -g dovenull -s /bin/false dovenull
patch -Np1 -i ../dovecot-2.3.16-lua_fixes-1.patch
CPPFLAGS="-I/usr/include/tirpc" \
LDFLAGS+=" -ltirpc" \
./configure --prefix=/usr                          \
            --sysconfdir=/etc                      \
            --localstatedir=/var                   \
            --docdir=/usr/share/doc/dovecot-2.3.16 \
            --disable-static &&
make
make install
cp -rv /usr/share/doc/dovecot-2.3.16/example-config/* /etc/dovecot
sed -i '/^\!include / s/^/#/' /etc/dovecot/dovecot.conf &&
chmod -v 1777 /var/mail &&
cat > /etc/dovecot/local.conf << "EOF"
protocols = imap
ssl = no
# The next line is only needed if you have no IPv6 network interfaces
listen = *
mail_location = mbox:~/Mail:INBOX=/var/mail/%u
userdb {
  driver = passwd
}
passdb {
  driver = shadow
}
EOF
make install-dovecot
cd ..
rm dovecot-2.3.16.tar.gz
rm -rf dovecot-2.3.16