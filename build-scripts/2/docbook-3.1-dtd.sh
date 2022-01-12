sqml-common UnZip
if [ -z "$old" ];
then
   exit
fi
wget https://www.docbook.org/sgml/3.1/docbk31.zip

tar -xvf docbk31.zip
cd 
sed -i -e '/ISO 8879/d' \
       -e 's|DTDDECL "-//OASIS//DTD DocBook V3.1//EN"|SGMLDECL|g' \
       docbook.cat
install -v -d -m755 /usr/share/sgml/docbook/sgml-dtd-3.1 &&
chown -R root:root . &&
install -v docbook.cat /usr/share/sgml/docbook/sgml-dtd-3.1/catalog &&
cp -v -af *.dtd *.mod *.dcl /usr/share/sgml/docbook/sgml-dtd-3.1 &&

install-catalog --add /etc/sgml/sgml-docbook-dtd-3.1.cat \
    /usr/share/sgml/docbook/sgml-dtd-3.1/catalog &&

install-catalog --add /etc/sgml/sgml-docbook-dtd-3.1.cat \
    /etc/sgml/sgml-docbook.cat
cat >> /usr/share/sgml/docbook/sgml-dtd-3.1/catalog << "EOF"
  -- Begin Single Major Version catalog changes --

PUBLIC "-//Davenport//DTD DocBook V3.0//EN" "docbook.dtd"

  -- End Single Major Version catalog changes --
EOF
cd ..
rm docbk31.zip
rm -rf 