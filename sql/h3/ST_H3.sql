CREATE OR REPLACE FUNCTION libjs4us.h3.ST_H3(point GEOGRAPHY, resolution NUMERIC) AS (
	libjs4us.h3.geoToH3(ST_Y(point),ST_X(point),resolution)
);