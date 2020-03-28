CREATE OR REPLACE FUNCTION libjs4us.quadkey.parent(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return parent(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/quadkey.js"]
);
