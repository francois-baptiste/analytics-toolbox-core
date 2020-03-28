CREATE OR REPLACE FUNCTION libjs4eu.quadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(libjs4eu.quadkey.quadkeyToGeoJsonBoundary(quadkey))
);