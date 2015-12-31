DROP KEYSPACE IF EXISTS engine1;
CREATE KEYSPACE engine1 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
DESCRIBE KEYSPACES;

-- ----------------------------------- --
CREATE TABLE IF NOT EXISTS
engine1.domain (
  root text,
  count counter,
  PRIMARY KEY (root)
);

-- ----------------------------------- --
CREATE TABLE IF NOT EXISTS
engine1.links (
    domain text,
    url text,
    PRIMARY KEY( domain, url )
) WITH CLUSTERING ORDER BY (url ASC);

-- ----------------------------------- --
CREATE TABLE IF NOT EXISTS 
engine1.visited (
    url text PRIMARY KEY
);
-- ----------------------------------- --
