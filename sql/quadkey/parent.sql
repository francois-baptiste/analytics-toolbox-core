CREATE OR REPLACE FUNCTION libjs4eu.quadkey.parent(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return parent(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-jslibs/quadkey.js"]
);
