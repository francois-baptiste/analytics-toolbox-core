CREATE OR REPLACE FUNCTION datascience229608.h3.numHexagons(res NUMERIC)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.numHexagons(res);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);