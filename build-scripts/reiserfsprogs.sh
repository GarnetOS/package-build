build-scripts/prepare.sh
wget https://www.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/v3.6.27/reiserfsprogs-3.6.27.tar.xz
tar -xvf reiserfsprogs-3.6.27.tar.xz
cd reiserfsprogs-3.6.27
sed -i '/parse_time.h/i #define _GNU_SOURCE' lib/parse_time.c &&
autoreconf -fiv             &&
./configure --prefix=/usr   \
            --sbindir=/sbin &&
make
make install
cd ..
rm reiserfsprogs-3.6.27.tar.xz
rm reiserfsprogs-3.6.27
