CREATE OR REPLACE FUNCTION libjs4usquadkey.bbox(quadkey STRING)
  RETURNS ARRAY<STRING>
  LANGUAGE js AS
"""
var b= bbox(quadkey);  
return [b.min.lng,b.min.lat,b.max.lng,b.max.lat];
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);
