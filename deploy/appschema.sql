-- Deploy flipr:appschema to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS :"schema";

COMMIT;
