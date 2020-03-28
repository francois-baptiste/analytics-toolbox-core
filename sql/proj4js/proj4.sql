CREATE OR REPLACE FUNCTION geolib.proj4js.proj4(fromProjection STRING, toProjection STRING,coordinates ARRAY<FLOAT64>)
  RETURNS ARRAY<FLOAT64>
  LANGUAGE js AS
"""
return proj4(fromProjection,toProjection,coordinates);  
"""
OPTIONS (
  library=["gs://bigquery-geolib/proj4.js"]
);
