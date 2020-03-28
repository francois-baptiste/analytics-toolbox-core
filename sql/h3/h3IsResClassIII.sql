CREATE OR REPLACE FUNCTION libjs4ush3.h3IsResClassIII(h3Index STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IsResClassIII(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);