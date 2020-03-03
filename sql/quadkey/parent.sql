CREATE OR REPLACE FUNCTION `data-science-229608`.quadkey.parent(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return parent(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);
