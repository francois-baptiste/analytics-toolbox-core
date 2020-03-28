CREATE OR REPLACE FUNCTION libjs4usquadkey.children(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return children(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);
