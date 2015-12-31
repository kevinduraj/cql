DROP KEYSPACE links;

CREATE KEYSPACE links WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
DESCRIBE KEYSPACES;

CREATE TABLE links.table1 (
    url text PRIMARY KEY
);



