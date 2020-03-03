CREATE OR REPLACE FUNCTION datascience229608.quadkey.ST_QUADKEY_POLYFILLFROMGEOG(geo GEOGRAPHY, resolution NUMERIC) AS (
	datascience229608.quadkey.polyfillFromGeoJson(ST_ASGEOJSON(geo),resolution)
);