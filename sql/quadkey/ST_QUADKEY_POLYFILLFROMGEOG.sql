CREATE OR REPLACE FUNCTION data-science-229608.quadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	data-science-229608.quadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);