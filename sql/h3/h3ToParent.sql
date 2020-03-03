CREATE OR REPLACE FUNCTION `data-science-229608`.h3.h3ToParent(h3Index STRING, resolution NUMERIC)
 RETURNS STRING
 LANGUAGE js AS
"""
return h3.h3ToParent(h3Index,resolution);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);