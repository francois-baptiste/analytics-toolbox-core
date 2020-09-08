CREATE OR REPLACE FUNCTION libjs4eu.quadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	libjs4eu.quadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);