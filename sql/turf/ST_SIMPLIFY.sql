CREATE OR REPLACE FUNCTION libjs4ue.turf.ST_SIMPLIFY(geojson GEOGRAPHY, tolerance NUMERIC) AS (
  ST_GEOGFROMGEOJSON(libjs4ue.turf.simplify(ST_ASGEOJSON(geojson), STRUCT(tolerance as tolerance, true as highQuality)))
);
