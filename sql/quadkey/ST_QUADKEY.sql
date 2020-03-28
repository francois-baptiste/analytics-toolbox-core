CREATE OR REPLACE FUNCTION libjs4us.quadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	libjs4us.quadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);