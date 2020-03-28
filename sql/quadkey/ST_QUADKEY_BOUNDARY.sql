CREATE OR REPLACE FUNCTION geolib.quadkey.ST_QUADKEY_BOUNDARY(quadkey STRING) AS (
	ST_GEOGFROMGEOJSON(geolib.quadkey.quadkeyToGeoJsonBoundary(quadkey))
);