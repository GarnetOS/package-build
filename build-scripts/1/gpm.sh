build-scripts/prepare.sh
wget http://anduin.linuxfromscratch.org/BLFS/gpm/gpm-1.20.7.tar.bz2

wget http://www.linuxfromscratch.org/patches/blfs/10.0/gpm-1.20.7-consolidated-1.patch

tar -xvf gpm-1.20.7.tar.bz2
cd gpm-1.20.7
patch -Np1 -i ../gpm-1.20.7-consolidated-1.patch &&
./autogen.sh                                     &&
./configure --prefix=/usr --sysconfdir=/etc      &&
make
make install                                          &&

install-info --dir-file=/usr/share/info/dir           \
             /usr/share/info/gpm.info                 &&

ln -sfv libgpm.so.2.1.0 /usr/lib/libgpm.so            &&
install -v -m644 conf/gpm-root.conf /etc              &&

install -v -m755 -d /usr/share/doc/gpm-1.20.7/support &&
install -v -m644    doc/support/*                     \
                    /usr/share/doc/gpm-1.20.7/support &&
install -v -m644    doc/{FAQ,HACK_GPM,README*}        \
                    /usr/share/doc/gpm-1.20.7
cd ..
rm gpm-1.20.7.tar.bz2
rm -rf gpm-1.20.7.
