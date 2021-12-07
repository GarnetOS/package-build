if [ -z "$old" ];
then
   exit
fi
wget https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.7p1.tar.gz

tar -xvf openssh-8.7p1.tar.gz
cd openssh-8.7p1
install  -v -m700 -d /var/lib/sshd &&
chown    -v root:sys /var/lib/sshd &&

groupadd -g 50 sshd        &&
useradd  -c 'sshd PrivSep' \
         -d /var/lib/sshd  \
         -g sshd           \
         -s /bin/false     \
         -u 50 sshd
./configure --prefix=/usr                            \
            --sysconfdir=/etc/ssh                    \
            --with-md5-passwords                     \
            --with-privsep-path=/var/lib/sshd        \
            --with-default-path=/usr/bin             \
            --with-superuser-path=/usr/sbin:/usr/bin \
            --with-pid-dir=/run
make
make install &&
install -v -m755    contrib/ssh-copy-id /usr/bin     &&

install -v -m644    contrib/ssh-copy-id.1 \
                    /usr/share/man/man1              &&
install -v -m755 -d /usr/share/doc/openssh-8.7p1     &&
install -v -m644    INSTALL LICENCE OVERVIEW README* \
                    /usr/share/doc/openssh-8.7p1
cd ..
rm openssh-8.7p1.tar.gz
rm -rf openssh-8.7p1