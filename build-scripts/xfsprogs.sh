build-scripts/prepare.sh
wget https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-5.7.0.tar.xz
tar -xvf xfsprogs-5.7.0.tar.xz
cd xfsprogs-5.7.0
make DEBUG=-DNDEBUG     \
     INSTALL_USER=root  \
     INSTALL_GROUP=root
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-5.7.0 install     &&
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-5.7.0 install-dev &&

rm -rfv /usr/lib/libhandle.a                                &&
rm -rfv /lib/libhandle.{a,la,so}                            &&
ln -sfv ../../lib/libhandle.so.1 /usr/lib/libhandle.so
cd ..
rm xfsprogs-5.7.0.tar.xz
rm -rf xfsprogs-5.7.0
