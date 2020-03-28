CREATE OR REPLACE FUNCTION libjs4us.quadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	libjs4us.quadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);