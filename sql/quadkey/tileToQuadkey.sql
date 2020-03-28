CREATE OR REPLACE FUNCTION libjs4usquadkey.tileToQuadkey(x NUMERIC, y NUMERIC, z NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return tileToQuadkey({ x: x, y: y }, z);
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);

