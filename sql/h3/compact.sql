CREATE OR REPLACE FUNCTION libjs4us.h3.compact(h3Set ARRAY<STRING>)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.compact(h3Set);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/h3-js.umd.js"]
);