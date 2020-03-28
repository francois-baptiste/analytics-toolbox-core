CREATE OR REPLACE FUNCTION geolib.h3.h3IsValid(h3Index STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IsValid(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);