CREATE OR REPLACE FUNCTION libjs4eu.s2.idToLng(key STRING)
  RETURNS INT64
  LANGUAGE js AS
"""
return S2.idToLatLng(key)["lng"];
"""
OPTIONS (
  library=["gs://bigquery-jslibs/s2geometry.js"]
);
