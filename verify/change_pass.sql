-- Verify flipr:change_pass on pg

BEGIN;

SET search_path TO :"schema";

SELECT has_function_privilege('change_pass(text, text, text)', 'execute');

ROLLBACK;
