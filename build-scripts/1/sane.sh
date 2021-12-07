if [ -z "$old" ];
then
   exit
fi
wget https://anduin.linuxfromscratch.org/BLFS/sane/sane-backends-1.0.29.tar.gz

wget https://anduin.linuxfromscratch.org/BLFS/sane/sane-frontends-1.0.14.tar.gz

tar -xvf sane-backends-1.0.29.tar.gz
cd sane-backends-1.0.29
groupadd -g 70 scanner
usermod -G scanner -a username
sg scanner -c "                  \
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --with-group=scanner \
            --docdir=/usr/share/doc/sane-backends-1.0.29" &&
make
make install                                         &&
install -m 644 -v tools/udev/libsane.rules           \
                  /etc/udev/rules.d/65-scanner.rules &&
chgrp -v scanner  /var/lock/sane
tar -xf ../sane-frontends-1.0.14.tar.gz &&
cd sane-frontends-1.0.14                &&

sed -i -e "/SANE_CAP_ALWAYS_SETTABLE/d" src/gtkglue.c &&
./configure --prefix=/usr --mandir=/usr/share/man &&
make
make install &&
install -v -m644 doc/sane.png xscanimage-icon-48x48-2.png \
    /usr/share/sane
ln -v -s ../../../../bin/xscanimage /usr/lib/gimp/2.0/plug-ins
cat >> /etc/sane.d/net.conf << "EOF"
connect_timeout = 60
<server_ip>
EOF
mkdir -pv /usr/share/{applications,pixmaps}               &&

cat > /usr/share/applications/xscanimage.desktop << "EOF" &&
[Desktop Entry]
Encoding=UTF-8
Name=XScanImage - Scanning
Comment=Acquire images from a scanner
Exec=xscanimage
Icon=xscanimage
Terminal=false
Type=Application
Categories=Application;Graphics
EOF

ln -svf ../sane/xscanimage-icon-48x48-2.png /usr/share/pixmaps/xscanimage.png

cd ..
rm sane-backends-1.0.29.tar.gz
rm -rf sane-backends-1.0.29