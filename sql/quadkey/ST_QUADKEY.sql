CREATE OR REPLACE FUNCTION datascience229608.quadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	datascience229608.quadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);