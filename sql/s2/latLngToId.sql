CREATE OR REPLACE FUNCTION libjs4ue.s2.latLngToId(latitude FLOAT64, longitude FLOAT64, level NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return S2.latLngToId(latitude, longitude, level);
"""
OPTIONS (
  library=["gs://bigquery-geolib/s2geometry.js"]
);
