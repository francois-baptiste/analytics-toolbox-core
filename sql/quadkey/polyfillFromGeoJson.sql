CREATE OR REPLACE FUNCTION data-science-229608.quadkey.polyfillFromGeoJson(geojson STRING, level NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
var pol = JSON.parse(geojson);
return geojsonToQuadkeys(pol, {min_zoom: level,max_zoom: level});
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js","gs://bigquery-data-science-229608/tilecover.js"]
);