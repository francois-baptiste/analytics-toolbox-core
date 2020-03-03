CREATE OR REPLACE FUNCTION datascience229608.h3.compact(h3Set ARRAY<STRING>)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.compact(h3Set);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);