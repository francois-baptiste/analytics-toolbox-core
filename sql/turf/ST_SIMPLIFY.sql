CREATE OR REPLACE FUNCTION libjs4us.turf.ST_SIMPLIFY(geojson GEOGRAPHY, tolerance NUMERIC) AS (
  ST_GEOGFROMGEOJSON(libjs4us.turf.simplify(ST_ASGEOJSON(geojson), STRUCT(tolerance as tolerance, true as highQuality)))
);
