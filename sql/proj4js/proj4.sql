CREATE OR REPLACE FUNCTION libjs4eu.proj4js.proj4(fromProjection STRING, toProjection STRING,coordinates ARRAY<FLOAT64>)
  RETURNS ARRAY<FLOAT64>
  LANGUAGE js AS
"""
return proj4(fromProjection,toProjection,coordinates);  
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/proj4.js"]
);
