CREATE OR REPLACE FUNCTION libjs4ush3.hexRing(h3Index STRING, ringSize NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.hexRing(h3Index, ringSize);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);