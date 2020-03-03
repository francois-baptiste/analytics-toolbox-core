CREATE FUNCTION datascience229608.turf.ST_BUFFER(geojson GEOGRAPHY, radius NUMERIC, units STRING, steps NUMERIC) AS (
  ST_GEOGFROMGEOJSON(datascience229608.turf.buffer(ST_ASGEOJSON(geojson),radius,STRUCT(units,steps)))
);