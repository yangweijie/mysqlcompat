\set ECHO none
BEGIN;
\i sql_bits/mathematical.sql
\set ECHO all

SELECT format(10000.01, 0);
SELECT format(10000.01, 2);
SELECT format(0.01, 1);
SELECT format(0, 3);
SELECT format(9.95, 1);
SELECT format(9.94999999, 1);

ROLLBACK;
