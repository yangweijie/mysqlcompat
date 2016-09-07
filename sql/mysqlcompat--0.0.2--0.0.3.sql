-- Dummy file. There were no functional changes in 0.0.2, just addition of 
-- new signatures for YEAR()/MONTH() .

CREATE OR REPLACE FUNCTION month(date)
RETURNS integer AS $$
  SELECT EXTRACT(MONTH FROM DATE($1))::integer
$$ IMMUTABLE STRICT LANGUAGE SQL;

CREATE OR REPLACE FUNCTION year(timestamp without time zone)
RETURNS integer AS $$
  SELECT EXTRACT(YEAR FROM $1)::integer
$$ IMMUTABLE STRICT LANGUAGE SQL;
