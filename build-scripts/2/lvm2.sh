libaio
if [ -z "$old" ];
then
   exit
fi
wget https://sourceware.org/ftp/lvm2/LVM2.2.03.13.tgz

tar -xvf LVM2.2.03.13.tgz
cd LVM2.2.03.13
PATH+=:/usr/sbin                \
./configure --prefix=/usr       \
            --enable-cmdlib     \
            --enable-pkgconfig  \
            --enable-udev_sync  &&
make
make -C tools install_tools_dynamic &&
make -C udev  install                 &&
make -C libdm install
make S=shell/thin-flags.sh check_local
     --with-thin-check=    \
     --with-thin-dump=     \
     --with-thin-repair=   \
     --with-thin-restore=  \
     --with-cache-check=   \
     --with-cache-dump=    \
     --with-cache-repair=  \
     --with-cache-restore= \
make install
cd ..
rm LVM2.2.03.13.tgz
rm -rf LVM2.2.03.13