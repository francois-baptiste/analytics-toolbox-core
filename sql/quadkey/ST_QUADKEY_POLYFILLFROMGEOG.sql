CREATE OR REPLACE FUNCTION geolib.quadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	geolib.quadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);