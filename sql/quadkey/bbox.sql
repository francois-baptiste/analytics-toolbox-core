CREATE OR REPLACE FUNCTION `data-science-229608`.quadkey.bbox(quadkey STRING)
  RETURNS ARRAY<STRING>
  LANGUAGE js AS
"""
var b= bbox(quadkey);  
return [b.min.lng,b.min.lat,b.max.lng,b.max.lat];
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);
