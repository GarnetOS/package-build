gc libunistring
if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/guile/guile-3.0.7.tar.xz

tar -xvf guile-3.0.7.tar.xz
cd guile-3.0.7
sed -e 's/#ifndef __attribute_maybe_unused__//' \
    -e '174d'                                   \
    -i lib/libc-config.h
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/guile-3.0.7 &&
make      &&
make html &&

makeinfo --plaintext -o doc/r5rs/r5rs.txt doc/r5rs/r5rs.texi &&
makeinfo --plaintext -o doc/ref/guile.txt doc/ref/guile.texi
make install      &&
make install-html &&

mkdir -p                       /usr/share/gdb/auto-load/usr/lib &&
mv /usr/lib/libguile-*-gdb.scm /usr/share/gdb/auto-load/usr/lib &&
mv /usr/share/doc/guile-3.0.7/{guile.html,ref} &&
mv /usr/share/doc/guile-3.0.7/r5rs{.html,}     &&

find examples -name "Makefile*" -delete         &&
cp -vR examples   /usr/share/doc/guile-3.0.7   &&

for DIRNAME in r5rs ref; do
  install -v -m644  doc/${DIRNAME}/*.txt \
                    /usr/share/doc/guile-3.0.7/${DIRNAME}
done &&
unset DIRNAME
cd ..
rm guile-3.0.7.tar.xz
rm -rf guile-3.0.7