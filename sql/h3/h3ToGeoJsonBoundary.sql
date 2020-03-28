CREATE OR REPLACE FUNCTION libjs4eu.h3.h3ToGeoJsonBoundary(h3Index STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
var geojson = {
    "type": "Polygon", 
    "coordinates": [h3.h3ToGeoBoundary(h3Index,true)]
}

return JSON.stringify(geojson);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);