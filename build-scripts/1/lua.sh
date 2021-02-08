build-scripts/prepare.sh
wget http://www.lua.org/ftp/lua-5.4.0.tar.gz

wget http://www.linuxfromscratch.org/patches/blfs/10.0/lua-5.4.0-shared_library-1.patch

tar -xvf lua-5.4.0.tar.gz
cd lua-5.4.0
cat > lua.pc << "EOF"
V=5.4
R=5.4.0

prefix=/usr
INSTALL_BIN=${prefix}/bin
INSTALL_INC=${prefix}/include
INSTALL_LIB=${prefix}/lib
INSTALL_MAN=${prefix}/share/man/man1
INSTALL_LMOD=${prefix}/share/lua/${V}
INSTALL_CMOD=${prefix}/lib/lua/${V}
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: Lua
Description: An Extensible Extension Language
Version: ${R}
Requires:
Libs: -L${libdir} -llua -lm -ldl
Cflags: -I${includedir}
EOF
patch -Np1 -i ../lua-5.4.0-shared_library-1.patch &&
make linux
make INSTALL_TOP=/usr                \
     INSTALL_DATA="cp -d"            \
     INSTALL_MAN=/usr/share/man/man1 \
     TO_LIB="liblua.so liblua.so.5.4 liblua.so.5.4.0" \
     install &&

mkdir -pv                      /usr/share/doc/lua-5.4.0 &&
cp -v doc/*.{html,css,gif,png} /usr/share/doc/lua-5.4.0 &&

install -v -m644 -D lua.pc /usr/lib/pkgconfig/lua.pc
cd ..
rm lua-5.4.0.tar.gz
rm -rf lua-5.4.0