CREATE OR REPLACE FUNCTION `libjs4eu.h3.h3ToGeoJson`(h3Index STRING) RETURNS STRING LANGUAGE js
OPTIONS (library=["gs://bigquery-geolib/h3-js.umd.js"]) AS """
var p = h3.h3ToGeo(h3Index); return '{ "type": "Point", "coordinates": ['+p[1]+', '+p[0]+'] }';
""";
