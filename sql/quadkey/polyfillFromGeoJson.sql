CREATE OR REPLACE FUNCTION libjs4eu.quadkey.polyfillFromGeoJson(geojson STRING, level NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
var pol = JSON.parse(geojson);
return geojsonToQuadkeys(pol, {min_zoom: level,max_zoom: level});
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/quadkey.js","gs://bigquery-libjs4eu/tilecover.js"]
);