CREATE OR REPLACE FUNCTION datascience229608.quadkey.quadkeyToGeoJsonBoundary(quadkey STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
var b= bbox(quadkey);  
var geojson = {
    "type": "Polygon", 
    "coordinates": [[
    	[b.min.lng,b.min.lat],
    	[b.min.lng,b.max.lat],
    	[b.max.lng,b.max.lat],
    	[b.max.lng,b.min.lat],
    	[b.min.lng,b.min.lat]
    ]]
};;

return JSON.stringify(geojson);


"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);
