CREATE OR REPLACE FUNCTION geolib.quadkey.children(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return children(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);
