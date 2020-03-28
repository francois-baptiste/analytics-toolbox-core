CREATE OR REPLACE FUNCTION libjs4ue.quadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	libjs4ue.quadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);