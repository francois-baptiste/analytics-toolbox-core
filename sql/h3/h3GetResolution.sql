CREATE OR REPLACE FUNCTION libjs4us.h3.h3GetResolution(h3Index STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.h3GetResolution(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/h3-js.umd.js"]
);