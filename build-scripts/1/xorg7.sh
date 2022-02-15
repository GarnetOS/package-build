if [ -z "$old" ];
then
   exit
fi
wget 

tar -xvf 
cd 
export XORG_PREFIX="<PREFIX>"
export XORG_CONFIG="--prefix=$XORG_PREFIX --sysconfdir=/etc \
    --localstatedir=/var --disable-static"
cat > /etc/profile.d/xorg.sh << EOF
XORG_PREFIX="$XORG_PREFIX"
XORG_CONFIG="--prefix=\$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static"
export XORG_PREFIX XORG_CONFIG
EOF
chmod 644 /etc/profile.d/xorg.sh
cat > /etc/sudoers.d/xorg << EOF
Defaults env_keep += XORG_PREFIX
Defaults env_keep += XORG_CONFIG
EOF
cat >> /etc/profile.d/xorg.sh << "EOF"

pathappend $XORG_PREFIX/bin             PATH
pathappend $XORG_PREFIX/lib/pkgconfig   PKG_CONFIG_PATH
pathappend $XORG_PREFIX/share/pkgconfig PKG_CONFIG_PATH

pathappend $XORG_PREFIX/lib             LIBRARY_PATH
pathappend $XORG_PREFIX/include         C_INCLUDE_PATH
pathappend $XORG_PREFIX/include         CPLUS_INCLUDE_PATH

ACLOCAL="aclocal -I $XORG_PREFIX/share/aclocal"

export PATH PKG_CONFIG_PATH ACLOCAL LIBRARY_PATH C_INCLUDE_PATH CPLUS_INCLUDE_PATH
EOF
source /etc/profile.d/xorg.sh
echo "$XORG_PREFIX/lib" >> /etc/ld.so.conf
sed "s@/usr/X11R6@$XORG_PREFIX@g" -i /etc/man_db.conf
ln -svf $XORG_PREFIX/share/X11 /usr/share/X11
ln -svf $XORG_PREFIX /usr/X11R6
cd ..
rm 
rm -rf 