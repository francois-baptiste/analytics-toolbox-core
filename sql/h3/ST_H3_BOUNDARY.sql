CREATE OR REPLACE FUNCTION jslibs.h3.ST_H3_BOUNDARY(h3Index STRING) AS (
	ST_GEOGFROMGEOJSON(jslibs.h3.h3ToGeoJsonBoundary(h3Index))
);