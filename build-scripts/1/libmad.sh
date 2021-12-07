if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/libmad-0.15.1b-fixes-1.patch

tar -xvf libmad-0.15.1b.tar.gz
cd libmad-0.15.1b
patch -Np1 -i ../libmad-0.15.1b-fixes-1.patch                &&
sed "s@AM_CONFIG_HEADER@AC_CONFIG_HEADERS@g" -i configure.ac &&
touch NEWS AUTHORS ChangeLog                                 &&
autoreconf -fi                                               &&

./configure --prefix=/usr --disable-static &&
make
make install
cat > /usr/lib/pkgconfig/mad.pc << "EOF"
prefix=/usr
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: mad
Description: MPEG audio decoder
Requires:
Version: 0.15.1b
Libs: -L${libdir} -lmad
Cflags: -I${includedir}
EOF
cd ..
rm libmad-0.15.1b.tar.gz
rm -rf libmad-0.15.1bm -rf libmad-0.15.1b