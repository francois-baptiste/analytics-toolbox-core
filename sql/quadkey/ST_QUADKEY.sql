CREATE OR REPLACE FUNCTION geolib.quadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	geolib.quadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);