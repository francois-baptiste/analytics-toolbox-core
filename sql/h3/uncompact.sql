CREATE OR REPLACE FUNCTION libjs4eu.h3.uncompact(compactedSet ARRAY<STRING>, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.uncompact(compactedSet,resolution);
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/h3-js.umd.js"]
);