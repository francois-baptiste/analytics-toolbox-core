CREATE OR REPLACE FUNCTION datascience229608.h3.polyfillFromGeoJson(geojson STRING, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
var pol =JSON.parse(geojson)
return h3.polyfill(pol.coordinates[0],resolution,true);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);