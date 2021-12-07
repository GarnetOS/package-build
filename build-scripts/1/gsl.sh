if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/gsl/gsl-2.7.tar.gz

tar -xvf gsl-2.7.tar.gz
cd gsl-2.7
./configure --prefix=/usr --disable-static &&
make
make html
make install
mkdir                   /usr/share/doc/gsl-2.7 &&
cp -R doc/_build/html/* /usr/share/doc/gsl-2.7
cd ..
rm gsl-2.7.tar.gz
rm -rf gsl-2.7