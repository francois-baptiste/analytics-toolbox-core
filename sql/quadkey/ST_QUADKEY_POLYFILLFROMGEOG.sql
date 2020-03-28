CREATE OR REPLACE FUNCTION libjs4ue.quadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	libjs4ue.quadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);