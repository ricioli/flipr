-- Deploy flipr:change_pass to pg
-- requires: users
-- requires: appschema

BEGIN;

SET search_path TO :"schema";

CREATE OR REPLACE FUNCTION change_pass(
    nick    TEXT,
    oldpass TEXT,
    newpass TEXT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE users
       SET password = md5($3)
     WHERE nickname = $1
       AND password = md5($2);
    RETURN FOUND;
END;
$$;

COMMIT;
