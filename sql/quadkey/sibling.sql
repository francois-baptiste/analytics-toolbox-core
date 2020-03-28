CREATE OR REPLACE FUNCTION libjs4us.quadkey.sibling(quadkey STRING, direction STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return sibling(quadkey,direction);  
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/quadkey.js"]
);
