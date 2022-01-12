libsigsegv
if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/clisp/latest/clisp-2.49.tar.bz2

tar -xvf clisp-2.49.tar.bz2
cd clisp-2.49.
case $(uname -m) in
    i?86) export CFLAGS="${CFLAGS:--O2 -g} -falign-functions=4" ;;
esac
sed -i -e '/socket/d' -e '/"streams"/d' tests/tests.lisp
mkdir build &&
cd    build &&

../configure --srcdir=../                       \
             --prefix=/usr                      \
             --docdir=/usr/share/doc/clisp-2.49 \
             --with-libsigsegv-prefix=/usr &&

ulimit -s 16384 &&
make -j1
make install
cd ..
rm clisp-2.49.tar.bz2
rm -rf clisp-2.49.