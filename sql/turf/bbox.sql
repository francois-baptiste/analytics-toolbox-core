CREATE OR REPLACE FUNCTION libjs4us.turf.bbox(geojson STRING)
 RETURNS ARRAY<FLOAT64>
 LANGUAGE js AS
"""
	return turf.bbox(JSON.parse(geojson));
"""
OPTIONS (
 library=["gs://bigquery-geolib/turf.min.js"]
);