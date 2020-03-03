CREATE OR REPLACE FUNCTION data-science-229608.quadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(data-science-229608.quadkey.quadkeyToGeoJsonBoundary(quadkey))
);