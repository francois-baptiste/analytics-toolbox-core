CREATE OR REPLACE FUNCTION libjs4ue.h3.numHexagons(res NUMERIC)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.numHexagons(res);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);