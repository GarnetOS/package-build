if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz

tar -xvf pth-2.0.7.tar.gz
cd pth-2.0.7
sed -i 's#$(LOBJS): Makefile#$(LOBJS): pth_p.h Makefile#' Makefile.in &&
./configure --prefix=/usr           \
            --disable-static        \
            --mandir=/usr/share/man &&
make
make install &&
install -v -m755 -d /usr/share/doc/pth-2.0.7 &&
install -v -m644    README PORTING SUPPORT TESTS \
                    /usr/share/doc/pth-2.0.7
cd ..
rm pth-2.0.7.tar.gz
rm -rf pth-2.0.7