CREATE OR REPLACE FUNCTION data-science-229608.h3.h3ToGeoJsonBoundary(h3Index STRING)
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
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);