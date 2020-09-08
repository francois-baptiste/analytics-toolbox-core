CREATE OR REPLACE FUNCTION libjs4eu.h3.edgeLength(res NUMERIC,unit STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.edgeLength(res,unit);
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/h3-js.umd.js"]
);