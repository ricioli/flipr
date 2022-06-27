-- Revert flipr:users from pg

BEGIN;

SET search_path TO :"schema";

DROP TABLE users;

COMMIT;
