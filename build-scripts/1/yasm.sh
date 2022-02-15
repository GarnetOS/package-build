if [ -z "$old" ];
then
   exit
fi
wget https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz

tar -xvf yasm-1.3.0.tar.gz
cd yasm-1.3.0
sed -i 's#) ytasm.*#)#' Makefile.in &&

./configure --prefix=/usr &&
make
make install
cd ..
rm yasm-1.3.0.tar.gz
rm -rf yasm-1.3.0