build-scripts/prepare.sh
wget https://downloads.sourceforge.net/acpid2/acpid-2.0.32.tar.xz
tar -xvf acpid-2.0.32.tar.xz
cd acpid-2.0.32
./configure --prefix=/usr \
            --docdir=/usr/share/doc/acpid-2.0.32 &&
make
make install                         &&
install -v -m755 -d /etc/acpi/events &&
cp -r samples /usr/share/doc/acpid-2.0.32
cd ..
rm acpid-2.0.32.tar.xz
rm -rf acpid-2.0.32
