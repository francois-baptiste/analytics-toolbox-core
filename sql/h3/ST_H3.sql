CREATE OR REPLACE FUNCTION datascience229608.h3.ST_H3(point GEOGRAPHY, resolution NUMERIC) AS (
	datascience229608.h3.geoToH3(ST_Y(point),ST_X(point),resolution)
);