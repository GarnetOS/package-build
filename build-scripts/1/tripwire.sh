if [ -z "$old" ];
then
   exit
fi
wget https://github.com/Tripwire/tripwire-open-source/releases/download/2.4.3.7/tripwire-open-source-2.4.3.7.tar.gz

tar -xvf tripwire-open-source-2.4.3.7.tar.gz
cd tripwire-open-source-2.4.3.7
sed -e '/^CLOBBER/s/false/true/'         \
    -e 's|TWDB="${prefix}|TWDB="/var|'   \
    -e '/TWMAN/ s|${prefix}|/usr/share|' \
    -e '/TWDOCS/s|${prefix}/doc/tripwire|/usr/share/doc/tripwire-2.4.3.7|' \
    -i installer/install.cfg                               &&

find . -name Makefile.am | xargs                           \
    sed -i 's/^[[:alpha:]_]*_HEADERS.*=/noinst_HEADERS =/' &&

sed '/dist/d' -i man/man?/Makefile.am                      &&
autoreconf -fi                                             &&

./configure --prefix=/usr --sysconfdir=/etc/tripwire       &&
make CPPFLAGS=-std=c++11
make install &&
cp -v policy/*.txt /usr/share/doc/tripwire-2.4.3.7
twadmin --create-polfile --site-keyfile /etc/tripwire/site.key \
    /etc/tripwire/twpol.txt &&
tripwire --init

cd ..
rm tripwire-open-source-2.4.3.7.tar.gz
rm -rf tripwire-open-source-2.4.3.7