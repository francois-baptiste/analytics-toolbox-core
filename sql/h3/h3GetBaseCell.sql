CREATE OR REPLACE FUNCTION geolib.h3.h3GetBaseCell(h3Index STRING)
 RETURNS NUMERIC
 LANGUAGE js AS
"""
return h3.h3GetBaseCell(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);