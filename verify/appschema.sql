-- Verify flipr:appschema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege(:'schema', 'usage');

ROLLBACK;
