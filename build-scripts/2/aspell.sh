build-scripts/prepare.sh
install_deps which
if [ -z "$old" ];
then
       exit
fi
wget https://ftp.gnu.org/gnu/aspell/aspell-0.60.8.tar.gz

tar -xvf aspell-0.60.8.tar.gz
cd aspell-0.60.8
./configure --prefix=/usr &&
make
make install &&
ln -svfn aspell-0.60 /usr/lib/aspell &&

install -v -m755 -d /usr/share/doc/aspell-0.60.8/aspell{,-dev}.html &&

install -v -m644 manual/aspell.html/* \
    /usr/share/doc/aspell-0.60.8/aspell.html &&

install -v -m644 manual/aspell-dev.html/* \
    /usr/share/doc/aspell-0.60.8/aspell-dev.html
cd ..
rm aspell-0.60.8.tar.gz
rm -rf aspell-0.60.8
