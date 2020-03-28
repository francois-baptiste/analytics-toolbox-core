CREATE OR REPLACE FUNCTION geolib.quadkey.polyfillFromGeoJson(geojson STRING, level NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
var pol = JSON.parse(geojson);
return geojsonToQuadkeys(pol, {min_zoom: level,max_zoom: level});
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js","gs://bigquery-geolib/tilecover.js"]
);