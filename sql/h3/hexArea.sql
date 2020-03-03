CREATE OR REPLACE FUNCTION datascience229608.h3.hexArea(res NUMERIC,unit STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.hexArea(res,unit);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);