CREATE OR REPLACE FUNCTION geolib.s2.latLngToKey(latitude FLOAT64, longitude FLOAT64, level NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return S2.latLngToKey(latitude, longitude, level);
"""
OPTIONS (
  library=["gs://bigquery-geolib/s2geometry.js"]
);
