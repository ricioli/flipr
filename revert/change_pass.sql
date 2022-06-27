-- Revert flipr:change_pass from pg

BEGIN;

SET search_path TO :"schema";

DROP FUNCTION change_pass(TEXT, TEXT, TEXT);

COMMIT;
