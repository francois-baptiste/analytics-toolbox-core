CREATE OR REPLACE FUNCTION libjs4eu.h3.numHexagons(res NUMERIC)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.numHexagons(res);
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/h3-js.umd.js"]
);