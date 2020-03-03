CREATE OR REPLACE FUNCTION data-science-229608.h3.uncompact(compactedSet ARRAY<STRING>, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.uncompact(compactedSet,resolution);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);