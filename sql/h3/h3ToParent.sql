CREATE OR REPLACE FUNCTION libjs4eu.h3.h3ToParent(h3Index STRING, resolution NUMERIC)
 RETURNS STRING
 LANGUAGE js AS
"""
return h3.h3ToParent(h3Index,resolution);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);