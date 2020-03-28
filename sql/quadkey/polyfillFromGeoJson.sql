CREATE OR REPLACE FUNCTION libjs4us.quadkey.polyfillFromGeoJson(geojson STRING, level NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
var pol = JSON.parse(geojson);
return geojsonToQuadkeys(pol, {min_zoom: level,max_zoom: level});
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/quadkey.js","gs://bigquery-libjs4us/tilecover.js"]
);