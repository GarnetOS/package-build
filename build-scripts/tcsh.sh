build-scripts/prepare.sh
wget ftp://ftp.astron.com/pub/tcsh/tcsh-6.22.02.tar.gz
tar -xvf tcsh-6.22.02.tar.gz
cd tcsh-6.22.02
CFLAGS="$CFLAGS -fcommon" \
./configure --prefix=/usr --bindir=/bin &&

make &&
sh ./tcsh.man2html
make install install.man &&

ln -v -sf tcsh   /bin/csh &&
ln -v -sf tcsh.1 /usr/share/man/man1/csh.1 &&

install -v -m755 -d          /usr/share/doc/tcsh-6.22.02/html &&
install -v -m644 tcsh.html/* /usr/share/doc/tcsh-6.22.02/html &&
install -v -m644 FAQ         /usr/share/doc/tcsh-6.22.02
cd ..
rm tcsh-6.22.02.tar.gz
rm -rf tcsh-6.22.02
