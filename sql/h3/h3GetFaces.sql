CREATE OR REPLACE FUNCTION datascience229608.h3.h3GetFaces(h3Index STRING)
 RETURNS ARRAY<NUMERIC>
 LANGUAGE js AS
"""
return h3.h3GetFaces(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);