FROM postgres:12

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>

COPY hive-schema-2.3.0.postgres.sql /hive/hive-schema-2.3.0.postgres.sql
COPY hive-txn-schema-2.3.0.postgres.sql /hive/hive-txn-schema-2.3.0.postgres.sql

ADD init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
