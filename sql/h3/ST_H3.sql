CREATE OR REPLACE FUNCTION geolib.h3.ST_H3(point GEOGRAPHY, resolution NUMERIC) AS (
	geolib.h3.geoToH3(ST_Y(point),ST_X(point),resolution)
);