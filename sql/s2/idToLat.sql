CREATE OR REPLACE FUNCTION libjs4eu.s2.idToLat(key STRING)
  RETURNS INT64
  LANGUAGE js AS
"""
return S2.idToLatLng(key)["lat"];
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/s2geometry.js"]
);
