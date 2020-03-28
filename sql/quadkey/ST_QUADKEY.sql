CREATE OR REPLACE FUNCTION libjs4usquadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	libjs4usquadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);