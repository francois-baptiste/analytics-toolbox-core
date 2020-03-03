CREATE OR REPLACE FUNCTION data-science-229608.h3.h3IsValid(h3Index STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IsValid(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);