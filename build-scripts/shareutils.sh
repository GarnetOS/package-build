build-scripts/prepare.sh
wget https://ftp.gnu.org/gnu/sharutils/sharutils-4.15.2.tar.xz
tar -xvf sharutils-4.15.2.tar.xz
cd sharutils-4.15.2
sed -i 's/BUFSIZ/rw_base_size/' src/unshar.c &&
sed -i '/program_name/s/^/extern /' src/*opts.h
sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' lib/*.c        &&
echo "#define _IO_IN_BACKUP 0x100" >> lib/stdio-impl.h &&
./configure --prefix=/usr &&
make
make install
cd ..
rm sharutils-4.15.2.tar.xz
rm -rf sharutils-4.15.2
