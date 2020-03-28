CREATE OR REPLACE FUNCTION geolib.h3.edgeLength(res NUMERIC,unit STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.edgeLength(res,unit);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);