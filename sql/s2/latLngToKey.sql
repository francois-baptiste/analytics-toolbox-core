CREATE OR REPLACE FUNCTION libjs4us.s2.latLngToKey(latitude FLOAT64, longitude FLOAT64, level NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return S2.latLngToKey(latitude, longitude, level);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/s2geometry.js"]
);
