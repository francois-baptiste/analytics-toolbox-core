CREATE OR REPLACE FUNCTION libjs4eu.turf.bbox(geojson STRING)
 RETURNS ARRAY<FLOAT64>
 LANGUAGE js AS
"""
	return turf.bbox(JSON.parse(geojson));
"""
OPTIONS (
 library=["gs://bigquery-jslibs/turf.min.js"]
);