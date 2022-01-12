NSPR SQLite p11-kit
if [ -z "$old" ];
then
   exit
fi
wget https://archive.mozilla.org/pub/security/nss/releases/NSS_3_69_RTM/src/nss-3.69.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/nss-3.69-standalone-1.patch

tar -xvf nss-3.69.tar.gz
cd nss-3.69
patch -Np1 -i ../nss-3.69-standalone-1.patch &&

cd nss &&

make BUILD_OPT=1                  \
  NSPR_INCLUDE_DIR=/usr/include/nspr  \
  USE_SYSTEM_ZLIB=1                   \
  ZLIB_LIBS=-lz                       \
  NSS_ENABLE_WERROR=0                 \
  $([ $(uname -m) = x86_64 ] && echo USE_64=1) \
  $([ -f /usr/include/sqlite3.h ] && echo NSS_USE_SYSTEM_SQLITE=1)
cd tests &&
HOST=localhost DOMSUF=localdomain ./all.sh
cd ../
cd ../dist                                                          &&

install -v -m755 Linux*/lib/*.so              /usr/lib              &&
install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib              &&

install -v -m755 -d                           /usr/include/nss      &&
cp -v -RL {public,private}/nss/*              /usr/include/nss      &&
chmod -v 644                                  /usr/include/nss/*    &&

install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin &&

install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib/pkgconfig
ln -sfv ./pkcs11/p11-kit-trust.so /usr/lib/libnssckbi.so
cd ..
rm nss-3.69.tar.gz
rm -rf nss-3.69