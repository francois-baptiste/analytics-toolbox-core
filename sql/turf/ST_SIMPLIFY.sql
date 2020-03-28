CREATE OR REPLACE FUNCTION geolib.turf.ST_SIMPLIFY(geojson GEOGRAPHY, tolerance NUMERIC) AS (
  ST_GEOGFROMGEOJSON(geolib.turf.simplify(ST_ASGEOJSON(geojson), STRUCT(tolerance as tolerance, true as highQuality)))
);
