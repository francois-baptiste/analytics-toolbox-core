CREATE OR REPLACE FUNCTION libjs4usturf.ST_SIMPLIFY(geojson GEOGRAPHY, tolerance NUMERIC) AS (
  ST_GEOGFROMGEOJSON(libjs4usturf.simplify(ST_ASGEOJSON(geojson), STRUCT(tolerance as tolerance, true as highQuality)))
);
