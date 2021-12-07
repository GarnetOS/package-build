if [ -z "$old" ];
then
   exit
fi
wget https://www.zsh.org/pub/zsh-5.8.tar.xz

tar -xvf zsh-5.8.tar.xz
cd zsh-5.8
tar --strip-components=1 -xvf ../zsh-5.8-doc.tar.xz
./configure --prefix=/usr         \
            --sysconfdir=/etc/zsh \
            --enable-etcdir=/etc/zsh                  &&
make                                                  &&

makeinfo  Doc/zsh.texi --plaintext -o Doc/zsh.txt     &&
makeinfo  Doc/zsh.texi --html      -o Doc/html        &&
makeinfo  Doc/zsh.texi --html --no-split --no-headers -o Doc/zsh.html
texi2pdf  Doc/zsh.texi -o Doc/zsh.pdf
make install                              &&
make infodir=/usr/share/info install.info &&

install -v -m755 -d                 /usr/share/doc/zsh-5.8/html &&
install -v -m644 Doc/html/*         /usr/share/doc/zsh-5.8/html &&
install -v -m644 Doc/zsh.{html,txt} /usr/share/doc/zsh-5.8
make htmldir=/usr/share/doc/zsh-5.8/html install.html &&
install -v -m644 Doc/zsh.dvi /usr/share/doc/zsh-5.8
install -v -m644 Doc/zsh.pdf /usr/share/doc/zsh-5.8
cd ..
rm zsh-5.8.tar.xz
rm -rf zsh-5.8