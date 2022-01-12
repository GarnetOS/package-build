Apr-Util PCRE
if [ -z "$old" ];
then
   exit
fi
wget https://archive.apache.org/dist/httpd/httpd-2.4.48.tar.bz2

wget https://www.linuxfromscratch.org/patches/blfs/11.0/httpd-2.4.48-blfs_layout-1.patch

tar -xvf httpd-2.4.48.tar.bz2
cd httpd-2.4.48.
groupadd -g 25 apache &&
useradd -c "Apache Server" -d /srv/www -g apache \
        -s /bin/false -u 25 apache
patch -Np1 -i ../httpd-2.4.48-blfs_layout-1.patch             &&

sed '/dir.*CFG_PREFIX/s@^@#@' -i support/apxs.in              &&

./configure --enable-authnz-fcgi                              \
            --enable-layout=BLFS                              \
            --enable-mods-shared="all cgi"                    \
            --enable-mpms-shared=all                          \
            --enable-suexec=shared                            \
            --with-apr=/usr/bin/apr-1-config                  \
            --with-apr-util=/usr/bin/apu-1-config             \
            --with-suexec-bin=/usr/lib/httpd/suexec           \
            --with-suexec-caller=apache                       \
            --with-suexec-docroot=/srv/www                    \
            --with-suexec-logfile=/var/log/httpd/suexec.log   \
            --with-suexec-uidmin=100                          \
            --with-suexec-userdir=public_html                 &&
make
make install  &&

mv -v /usr/sbin/suexec /usr/lib/httpd/suexec &&
chgrp apache           /usr/lib/httpd/suexec &&
chmod 4754             /usr/lib/httpd/suexec &&

chown -v -R apache:apache /srv/www
make install-httpd
cd ..
rm httpd-2.4.48.tar.bz2
rm -rf httpd-2.4.48.