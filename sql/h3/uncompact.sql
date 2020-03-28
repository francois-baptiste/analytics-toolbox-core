CREATE OR REPLACE FUNCTION libjs4us.h3.uncompact(compactedSet ARRAY<STRING>, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.uncompact(compactedSet,resolution);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);