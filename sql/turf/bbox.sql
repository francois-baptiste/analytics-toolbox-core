CREATE FUNCTION `data-science-229608`.turf.bbox(geojson STRING)
 RETURNS ARRAY<FLOAT64>
 LANGUAGE js AS
"""
	return turf.bbox(JSON.parse(geojson));
"""
OPTIONS (
 library=["gs://bigquery-data-science-229608/turf.min.js"]
);