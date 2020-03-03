CREATE OR REPLACE FUNCTION datascience229608.quadkey.tileToQuadkey(x NUMERIC, y NUMERIC, z NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return tileToQuadkey({ x: x, y: y }, z);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);

