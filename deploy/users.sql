-- Deploy flipr:users to pg
-- requires: appschema

BEGIN;

SET search_path TO :"schema";

CREATE TABLE users (
    nickname  TEXT        PRIMARY KEY,
    password  TEXT        NOT NULL,
    timestamp TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMIT;
