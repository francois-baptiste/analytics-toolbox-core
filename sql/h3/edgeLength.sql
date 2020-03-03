CREATE OR REPLACE FUNCTION `data-science-229608`.h3.edgeLength(res NUMERIC,unit STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.edgeLength(res,unit);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);