CREATE OR REPLACE FUNCTION libjs4eu.turf.simplify(geojson STRING, options STRUCT<tolerance NUMERIC, highQuality BOOL>)
 RETURNS STRING
 LANGUAGE js AS
"""
var buffer = turf.simplify(JSON.parse(geojson),{'tolerance':options.tolerance,'highQuality':options.highQuality, 'mutate': true});
return JSON.stringify(buffer);
"""
OPTIONS (
 library=["gs://bigquery-libjs4eu/turf.min.js"]
);
