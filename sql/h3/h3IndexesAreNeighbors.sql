CREATE OR REPLACE FUNCTION libjs4eu.h3.h3IndexesAreNeighbors(origin STRING,destination STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IndexesAreNeighbors(origin,destination);
"""
OPTIONS (
  library=["gs://bigquery-jslibs/h3-js.umd.js"]
);