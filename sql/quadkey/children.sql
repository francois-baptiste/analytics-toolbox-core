CREATE OR REPLACE FUNCTION `data-science-229608`.quadkey.children(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return children(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);
