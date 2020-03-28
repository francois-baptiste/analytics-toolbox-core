CREATE OR REPLACE FUNCTION libjs4us.turf.simplify(geojson STRING, options STRUCT<tolerance NUMERIC, highQuality BOOL>)
 RETURNS STRING
 LANGUAGE js AS
"""
var buffer = turf.simplify(JSON.parse(geojson),{'tolerance':options.tolerance,'highQuality':options.highQuality, 'mutate': true});
return JSON.stringify(buffer);
"""
OPTIONS (
 library=["gs://bigquery-libjs4us/turf.min.js"]
);
