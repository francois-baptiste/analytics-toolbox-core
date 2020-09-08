CREATE OR REPLACE FUNCTION libjs4eu.s2.idToLng(key INT64)
  RETURNS INT64
  LANGUAGE js AS
"""
return S2.idToLatLng(key)["lng"];
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/s2geometry.js"]
);
