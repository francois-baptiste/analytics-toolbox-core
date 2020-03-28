CREATE OR REPLACE FUNCTION geolib.h3.ST_H3_CENTROID(h3Index STRING) AS (
	geolib.h3.h3ToGeoWkt(h3Index)
);