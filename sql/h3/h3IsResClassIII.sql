CREATE OR REPLACE FUNCTION libjs4us.h3.h3IsResClassIII(h3Index STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IsResClassIII(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/h3-js.umd.js"]
);