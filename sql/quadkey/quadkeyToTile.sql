CREATE OR REPLACE FUNCTION data-science-229608.quadkey.quadkeyToTile(key STRING)
  RETURNS STRUCT<x NUMERIC, y NUMERIC, z NUMERIC>
  LANGUAGE js AS
"""
var xy = quadkeyToTile(key);
xy.z=key.length;
return xy;
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);

