CREATE OR REPLACE FUNCTION libjs4us.h3.ST_H3_BOUNDARY(h3Index STRING) AS (
	ST_GEOGFROMGEOJSON(libjs4us.h3.h3ToGeoJsonBoundary(h3Index))
);