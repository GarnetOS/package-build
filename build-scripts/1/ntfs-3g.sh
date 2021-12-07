if [ -z "$old" ];
then
   exit
fi
wget https://tuxera.com/opensource/ntfs-3g_ntfsprogs-2021.8.22.tgz

tar -xvf ntfs-3g_ntfsprogs-2021.8.22.tgz
cd ntfs-3g_ntfsprogs-2021.8.22
./configure --prefix=/usr        \
            --disable-static     \
            --with-fuse=internal \
            --docdir=/usr/share/doc/ntfs-3g-2021.8.22 &&
make
make install &&
ln -sv ../bin/ntfs-3g /usr/sbin/mount.ntfs &&
ln -sv ntfs-3g.8 /usr/share/man/man8/mount.ntfs.8
chmod -v 4755 /usr/bin/ntfs-3g
cd ..
rm ntfs-3g_ntfsprogs-2021.8.22.tgz
rm -rf ntfs-3g_ntfsprogs-2021.8.22