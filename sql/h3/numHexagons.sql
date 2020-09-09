CREATE OR REPLACE FUNCTION libjs4eu.h3.numHexagons(res NUMERIC)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.numHexagons(res);
"""
OPTIONS (
  library=["gs://bigquery-jslibs/h3-js.umd.js"]
);