-- ----------------------------------- --
-- DROP TABLE engine.links_health;

CREATE TABLE
engine.links_health2 (
    domain text,
    url text,
    PRIMARY KEY( domain, url )
) WITH CLUSTERING ORDER BY (url ASC);

-- ----------------------------------- --
