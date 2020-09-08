CREATE OR REPLACE FUNCTION libjs4eu.h3.ST_H3_CENTROID(h3Index STRING) AS (
	libjs4eu.h3.h3ToGeoWkt(h3Index)
);