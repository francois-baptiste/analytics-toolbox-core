CREATE OR REPLACE FUNCTION libjs4ue.quadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(libjs4ue.quadkey.quadkeyToGeoJsonBoundary(quadkey))
);