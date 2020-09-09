CREATE OR REPLACE FUNCTION libjs4eu.s2.idToKey(key INT64)
  RETURNS STRING
  LANGUAGE js AS
"""
return S2.idToKey(key);
"""
OPTIONS (
  library=["gs://bigquery-jslibs/s2geometry.js"]
);
