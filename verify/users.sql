-- Verify flipr:users on pg

BEGIN;

SET search_path TO :"schema";

SELECT nickname, password, timestamp
  FROM users
 WHERE FALSE;

ROLLBACK;
