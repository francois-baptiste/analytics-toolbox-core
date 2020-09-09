CREATE OR REPLACE FUNCTION libjs4eu.quadkey.children(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
return children(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-jslibs/quadkey.js"]
);
