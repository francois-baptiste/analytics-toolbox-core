CREATE OR REPLACE FUNCTION data-science-229608.quadkey.ST_QUADKEY(point GEOGRAPHY, resolution NUMERIC) AS (
	data-science-229608.quadkey.locationToQuadkey(ST_Y(point),ST_X(point),resolution)
);