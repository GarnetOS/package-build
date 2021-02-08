build-scripts/prepare.sh
wget https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz
wget http://www.linuxfromscratch.org/patches/blfs/10.0/sgml-common-0.6.3-manpage-1.patch
tar -xvf sgml-common-0.6.3.tgz
cd sgml-common-0.6.3
patch -Np1 -i ../sgml-common-0.6.3-manpage-1.patch
autoreconf -f -i
./configure --prefix=/usr --sysconfdir=/etc &&
make
make docdir=/usr/share/doc install
install-catalog --add /etc/sgml/sgml-ent.cat /usr/share/sgml/sgml-iso-entities-8879.1986/catalog
install-catalog --add /etc/sgml/sgml-docbook.cat /etc/sgml/sgml-ent.cat
cd ..
rm sgml-common-0.6.3.tgz
rm -rf sgml-common-0.6.3
