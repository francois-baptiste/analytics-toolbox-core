CREATE FUNCTION `data-science-229608`.turf.simplify(geojson STRING, options STRUCT<tolerance NUMERIC, highQuality BOOL>)
 RETURNS STRING
 LANGUAGE js AS
"""
var buffer = turf.simplify(JSON.parse(geojson),{'tolerance':options.tolerance,'highQuality':options.highQuality, 'mutate': true});
return JSON.stringify(buffer.geometry);
"""
OPTIONS (
 library=["gs://bigquery-data-science-229608/turf.min.js"]
);
