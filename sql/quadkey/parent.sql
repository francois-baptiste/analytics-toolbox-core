CREATE OR REPLACE FUNCTION libjs4usquadkey.parent(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return parent(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);
