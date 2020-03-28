CREATE OR REPLACE FUNCTION libjs4us.h3.geoToH3(latitude FLOAT64, longitude FLOAT64, resolution NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return h3.geoToH3(latitude, longitude, resolution);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/h3-js.umd.js"]
);