CREATE OR REPLACE FUNCTION `data-science-229608`.quadkey.sibling(quadkey STRING, direction STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return sibling(quadkey,direction);  
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);
