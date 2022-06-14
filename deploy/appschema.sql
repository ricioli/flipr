-- Deploy flipr:appschema to pg

BEGIN;

SET search_path TO :"schema";

-- CREATE SCHEMA IF NOT EXISTS flipr;

COMMIT;
