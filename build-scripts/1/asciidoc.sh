if [ -z "$old" ];
then
   exit
fi
wget https://github.com/asciidoc/asciidoc-py3/releases/download/9.1.0/asciidoc-9.1.0.tar.gz

tar -xvf asciidoc-9.1.0.tar.gz
cd asciidoc-9.1.0
sed -i 's:doc/testasciidoc.1::' Makefile.in &&
rm doc/testasciidoc.1.txt
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/asciidoc-9.1.0 &&
make
make install &&
make docs


cd ..
rm asciidoc-9.1.0.tar.gz
rm -rf asciidoc-9.1.0