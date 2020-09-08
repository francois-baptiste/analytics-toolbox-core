CREATE OR REPLACE FUNCTION libjs4eu.h3.kRing(h3Index STRING, ringSize NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.kRing(h3Index, ringSize);
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/h3-js.umd.js"]
);