CREATE OR REPLACE FUNCTION libjs4us.quadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(libjs4us.quadkey.quadkeyToGeoJsonBoundary(quadkey))
);