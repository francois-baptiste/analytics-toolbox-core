CREATE OR REPLACE FUNCTION `data-science-229608`.h3.h3IndexesAreNeighbors(origin STRING,destination STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IndexesAreNeighbors(origin,destination);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);