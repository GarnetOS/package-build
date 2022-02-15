if [ -z "$old" ];
then
   exit
fi
wget https://sqlite.org/2021/sqlite-autoconf-3360000.tar.gz

tar -xvf sqlite-autoconf-3360000.tar.gz
cd sqlite-autoconf-3360000
unzip -q ../sqlite-doc-3360000.zip
./configure --prefix=/usr     \
            --disable-static  \
            --enable-fts5     \
            CPPFLAGS="-DSQLITE_ENABLE_FTS3=1            \
                      -DSQLITE_ENABLE_FTS4=1            \
                      -DSQLITE_ENABLE_COLUMN_METADATA=1 \
                      -DSQLITE_ENABLE_UNLOCK_NOTIFY=1   \
                      -DSQLITE_ENABLE_DBSTAT_VTAB=1     \
                      -DSQLITE_SECURE_DELETE=1          \
                      -DSQLITE_ENABLE_FTS3_TOKENIZER=1" &&
make
make install
install -v -m755 -d /usr/share/doc/sqlite-3.36.0 &&
cp -v -R sqlite-doc-3360000/* /usr/share/doc/sqlite-3.36.0
cd ..
rm sqlite-autoconf-3360000.tar.gz
rm -rf sqlite-autoconf-3360000