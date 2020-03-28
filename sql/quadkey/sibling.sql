CREATE OR REPLACE FUNCTION geolib.quadkey.sibling(quadkey STRING, direction STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return sibling(quadkey,direction);  
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);
