CREATE OR REPLACE FUNCTION libjs4usquadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(libjs4usquadkey.quadkeyToGeoJsonBoundary(quadkey))
);