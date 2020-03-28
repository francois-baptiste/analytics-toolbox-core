CREATE OR REPLACE FUNCTION libjs4usquadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	libjs4usquadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);