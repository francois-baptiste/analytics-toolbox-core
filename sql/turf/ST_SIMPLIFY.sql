CREATE FUNCTION datascience229608.turf.ST_SIMPLIFY(geojson GEOGRAPHY, tolerance NUMERIC) AS (
  ST_GEOGFROMGEOJSON(datascience229608.turf.simplifyt(ST_ASGEOJSON(geojson), STRUCT(tolerance as tolerance, true as highQuality)))
);
