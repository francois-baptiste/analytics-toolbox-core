CREATE OR REPLACE FUNCTION datascience229608.h3.h3GetResolution(h3Index STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.h3GetResolution(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);