CREATE OR REPLACE FUNCTION libjs4us.h3.hexArea(res NUMERIC,unit STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.hexArea(res,unit);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/h3-js.umd.js"]
);