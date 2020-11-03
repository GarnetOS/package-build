
build-scripts/prepare.sh
wget https://ftp.gnu.org/gnu/gcc/gcc-10.2.0/gcc-10.2.0.tar.xz
tar -xf gcc-10.2.0.tar.xz
cd gcc-10.2.0
case $(uname -m) in x86_64) sed -i.orig '/m64=/s/lib64/lib/' gcc/config/i386/t-linux64 ;;esac

mkdir build
cd    build

../configure                                           \
    --prefix=/usr                                      \
    --disable-multilib                                 \
    --with-system-zlib                                 \
    --enable-languages=obj-c++ &&
make -j4 -s
#ulimit -s 32768 &&
#make -k -s check
#../contrib/test_summary
make install &&

mkdir -pv /usr/share/gdb/auto-load/usr/lib              &&
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib &&

chown -v -R root:root \
    /usr/lib/gcc/*linux-gnu/10.2.0/include{,-fixed}

rm -rf /usr/lib/gcc/$(gcc -dumpmachine)/10.2.0/include-fixed/bits/
cd ..
rm gcc-10.2.0.tar.xz
rm -rf gcc-10.2.0
