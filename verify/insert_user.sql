-- Verify flipr:insert_user on pg

BEGIN;

SET search_path TO :"schema";

SELECT has_function_privilege('insert_user(text, text)', 'execute');

ROLLBACK;
