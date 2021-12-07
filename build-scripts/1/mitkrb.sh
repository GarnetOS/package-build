if [ -z "$old" ];
then
   exit
fi
wget https://kerberos.org/dist/krb5/1.19/krb5-1.19.2.tar.gz

tar -xvf krb5-1.19.2.tar.gz
cd krb5-1.19.2
cd src &&

sed -i -e 's@\^u}@^u cols 300}@' tests/dejagnu/config/default.exp     &&
sed -i -e '/eq 0/{N;s/12 //}'    plugins/kdb/db2/libdb2/test/run.test &&
sed -i '/t_iprop.py/d'           tests/Makefile.in                    &&

./configure --prefix=/usr            \
            --sysconfdir=/etc        \
            --localstatedir=/var/lib \
            --runstatedir=/run       \
            --with-system-et         \
            --with-system-ss         \
            --with-system-verto=no   \
            --enable-dns-for-realm &&
make
make install &&

install -v -dm755 /usr/share/doc/krb5-1.19.2 &&
cp -vfr ../doc/*  /usr/share/doc/krb5-1.19.2
cd ..
rm krb5-1.19.2.tar.gz
rm -rf krb5-1.19.2