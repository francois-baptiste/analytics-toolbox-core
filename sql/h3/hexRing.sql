CREATE OR REPLACE FUNCTION data-science-229608.h3.hexRing(h3Index STRING, ringSize NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.hexRing(h3Index, ringSize);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);