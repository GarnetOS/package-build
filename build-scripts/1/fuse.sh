if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libfuse/libfuse/releases/download/fuse-3.10.4/fuse-3.10.4.tar.xz

tar -xvf fuse-3.10.4.tar.xz
cd fuse-3.10.4
sed -i '/^udev/,$ s/^/#/' util/meson.build &&

mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release .. &&
ninja
python3 -m pytest test/
ninja install                                             &&

chmod u+s /usr/bin/fusermount3                &&

install -v -m755 -d /usr/share/doc/fuse-3.10.4      &&
install -v -m644    ../doc/{README.NFS,kernel.txt} \
                    /usr/share/doc/fuse-3.10.4      &&
cp -Rv ../doc/html  /usr/share/doc/fuse-3.10.4

cd ..
rm fuse-3.10.4.tar.xz
rm -rf fuse-3.10.4