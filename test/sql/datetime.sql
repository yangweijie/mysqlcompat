\set ECHO none
BEGIN;
\i sql_bits/datetime.sql
\set ECHO all

SELECT to_days('0001-01-01');
SELECT from_days(1);
SELECT to_days('2011-08-15');
SELECT from_days(734729);
SELECT from_days(to_days(now()::date)) = now()::date;

ROLLBACK;
