CREATE OR REPLACE FUNCTION datascience229608.quadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(datascience229608.quadkey.quadkeyToGeoJsonBoundary(quadkey))
);