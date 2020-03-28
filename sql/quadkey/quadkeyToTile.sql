CREATE OR REPLACE FUNCTION libjs4eu.quadkey.quadkeyToTile(key STRING)
  RETURNS STRUCT<x NUMERIC, y NUMERIC, z NUMERIC>
  LANGUAGE js AS
"""
var xy = quadkeyToTile(key);
xy.z=key.length;
return xy;
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);

