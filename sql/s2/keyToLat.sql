CREATE OR REPLACE FUNCTION jslibs.s2.keyToLat(key INT64)
  RETURNS INT64
  LANGUAGE js AS
"""
return S2.idToLatLng(key)["lat"];
"""
OPTIONS (
  library=["gs://bigquery-jslibs/s2geometry.js"]
);
