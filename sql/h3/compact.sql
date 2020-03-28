CREATE OR REPLACE FUNCTION libjs4ush3.compact(h3Set ARRAY<STRING>)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.compact(h3Set);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);