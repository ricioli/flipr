-- Deploy flipr:insert_user to pg
-- requires: users
-- requires: appschema

BEGIN;

SET search_path TO :"schema";

CREATE OR REPLACE FUNCTION insert_user(
    nickname TEXT,
    password TEXT
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO users VALUES($1, md5($2));
$$;

COMMIT;
