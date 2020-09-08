CREATE TEMP FUNCTION keyToId(key STRING)
  RETURNS INT64
  LANGUAGE js AS
"""
return S2.keyToId(key);
""";
OPTIONS (
  library=["gs://bigquery-libjs4eu/s2geometry.js"]
);
