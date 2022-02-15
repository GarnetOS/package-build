if [ -z "$old" ];
then
   exit
fi
wget https://ftp.postgresql.org/pub/source/v13.4/postgresql-13.4.tar.bz2

tar -xvf postgresql-13.4.tar.bz2
cd postgresql-13.4.
groupadd -g 41 postgres &&
useradd -c "PostgreSQL Server" -g postgres -d /srv/pgsql/data \
        -u 41 postgres
sed -i '/DEFAULT_PGSOCKET_DIR/s@/tmp@/run/postgresql@' src/include/pg_config_manual.h &&

./configure --prefix=/usr          \
            --enable-thread-safety \
            --docdir=/usr/share/doc/postgresql-13.4 &&
make
make install      &&
make install-docs
make -C contrib/<SUBDIR-NAME> install
install -v -dm700 /srv/pgsql/data &&
install -v -dm755 /run/postgresql &&
chown -Rv postgres:postgres /srv/pgsql /run/postgresql
su - postgres -c '/usr/bin/initdb -D /srv/pgsql/data'
cd ..
rm postgresql-13.4.tar.bz2
rm -rf postgresql-13.4.