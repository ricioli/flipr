-- Revert flipr:insert_user from pg

BEGIN;

SET search_path TO :"schema";

DROP FUNCTION insert_user(TEXT, TEXT);

COMMIT;
