libnsl PCRE
if [ -z "$old" ];
then
   exit
fi
wget https://ftp.exim.org/pub/exim/exim4/exim-4.94.2.tar.xz

tar -xvf exim-4.94.2.tar.xz
cd exim-4.94.2
groupadd -g 31 exim &&
useradd -d /dev/null -c "Exim Daemon" -g exim -s /bin/false -u 31 exim
sed -e 's,^BIN_DIR.*$,BIN_DIRECTORY=/usr/sbin,'    \
    -e 's,^CONF.*$,CONFIGURE_FILE=/etc/exim.conf,' \
    -e 's,^EXIM_USER.*$,EXIM_USER=exim,'           \
    -e '/# SUPPORT_TLS=yes/s,^#,,'                   \
    -e '/# USE_OPENSSL/s,^#,,'                       \
    -e 's,^EXIM_MONITOR,#EXIM_MONITOR,' src/EDITME > Local/Makefile &&

printf "USE_GDBM = yes\nDBMLIB = -lgdbm\n" >> Local/Makefile &&
make
make install                                    &&
install -v -m644 doc/exim.8 /usr/share/man/man8 &&

install -v -d -m755    /usr/share/doc/exim-4.94.2 &&
install -v -m644 doc/* /usr/share/doc/exim-4.94.2 &&

ln -sfv exim /usr/sbin/sendmail                 &&
install -v -d -m750 -o exim -g exim /var/spool/exim
chmod -v a+wt /var/mail
cat >> /etc/aliases << "EOF"
postmaster: root
MAILER-DAEMON: root
EOF
/usr/sbin/exim -bd -q15m
make install-exim

cd ..
rm exim-4.94.2.tar.xz
rm -rf exim-4.94.2