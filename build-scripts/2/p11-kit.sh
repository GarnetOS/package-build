libtasn1 make-ca
if [ -z "$old" ];
then
   exit
fi
wget https://github.com/p11-glue/p11-kit/releases/download/0.24.0/p11-kit-0.24.0.tar.xz

tar -xvf p11-kit-0.24.0.tar.xz
cd p11-kit-0.24.0
sed '20,$ d' -i trust/trust-extract-compat &&
cat >> trust/trust-extract-compat << "EOF"
# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Generate a new trust store
/usr/sbin/make-ca -f -g
EOF
mkdir p11-build &&
cd    p11-build &&

meson --prefix=/usr       \
      --buildtype=release \
      -Dtrust_paths=/etc/pki/anchors &&
ninja
ninja install &&
ln -sfv /usr/libexec/p11-kit/trust-extract-compat \
        /usr/bin/update-ca-certificates
cd ..
rm p11-kit-0.24.0.tar.xz
rm -rf p11-kit-0.24.0