CREATE OR REPLACE FUNCTION datascience229608.proj4js.proj4(fromProjection STRING, toProjection STRING,coordinates ARRAY<FLOAT64>)
  RETURNS ARRAY<FLOAT64>
  LANGUAGE js AS
"""
return proj4(fromProjection,toProjection,coordinates);  
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/proj4.js"]
);
