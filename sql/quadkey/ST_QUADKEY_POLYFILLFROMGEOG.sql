CREATE OR REPLACE FUNCTION libjs4eu.quadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	libjs4eu.quadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);