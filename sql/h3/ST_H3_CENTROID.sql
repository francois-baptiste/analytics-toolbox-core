CREATE OR REPLACE FUNCTION data-science-229608.h3.ST_H3_CENTROID(h3Index STRING) AS (
	data-science-229608.h3.h3ToGeoWkt(h3Index)
);