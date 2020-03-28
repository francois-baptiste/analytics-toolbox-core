CREATE OR REPLACE FUNCTION libjs4us.h3.h3GetFaces(h3Index STRING)
 RETURNS ARRAY<NUMERIC>
 LANGUAGE js AS
"""
return h3.h3GetFaces(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);