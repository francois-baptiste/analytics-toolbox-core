CREATE OR REPLACE FUNCTION libjs4us.h3.h3IsPentagon(h3Index STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IsPentagon(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);