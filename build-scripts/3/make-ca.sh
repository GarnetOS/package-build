p11-kit
if [ -z "$old" ];
then
   exit
fi
wget https://github.com/djlucas/make-ca/releases/download/v1.7/make-ca-1.7.tar.xz

tar -xvf make-ca-1.7.tar.xz
cd make-ca-1.7
make install &&
install -vdm755 /etc/ssl/local
/usr/sbin/make-ca -g
cat > /etc/cron.weekly/update-pki.sh << "EOF" &&
#!/bin/bash
/usr/sbin/make-ca -g
EOF
chmod 754 /etc/cron.weekly/update-pki.sh
wget http://www.cacert.org/certs/root.crt &&
wget http://www.cacert.org/certs/class3.crt &&
openssl x509 -in root.crt -text -fingerprint -setalias "CAcert Class 1 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_1_root.pem &&
openssl x509 -in class3.crt -text -fingerprint -setalias "CAcert Class 3 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_3_root.pem &&
/usr/sbin/make-ca -r -f
openssl x509 -in /etc/ssl/certs/Makebelieve_CA_Root.pem \
             -text \
             -fingerprint \
             -setalias "Disabled Makebelieve CA Root" \
             -addreject serverAuth \
             -addreject emailProtection \
             -addreject codeSigning \
       > /etc/ssl/local/Disabled_Makebelieve_CA_Root.pem &&
/usr/sbin/make-ca -r -f
cd ..
rm make-ca-1.7.tar.xz
rm -rf make-ca-1.7