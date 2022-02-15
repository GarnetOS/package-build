alsa-lib
if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/cdrtools/cdrtools-3.02a09.tar.bz2

tar -xvf cdrtools-3.02a09.tar.bz2
cd cdrtools-3.02a09.
export GMAKE_NOWARN=true &&
make -j1 INS_BASE=/usr DEFINSUSR=root DEFINSGRP=root
export GMAKE_NOWARN=true &&
make INS_BASE=/usr MANSUFF_LIB=3cdr DEFINSUSR=root DEFINSGRP=root install &&
install -v -m755 -d /usr/share/doc/cdrtools-3.02a09 &&
install -v -m644 README.* READMEs/* ABOUT doc/*.ps \
                    /usr/share/doc/cdrtools-3.02a09
cd ..
rm cdrtools-3.02a09.tar.bz2
rm -rf cdrtools-3.02a09.