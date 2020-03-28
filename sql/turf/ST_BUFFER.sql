CREATE OR REPLACE FUNCTION libjs4usturf.ST_BUFFER(geojson GEOGRAPHY, radius NUMERIC, units STRING, steps NUMERIC) AS (
  ST_GEOGFROMGEOJSON(libjs4usturf.buffer(ST_ASGEOJSON(geojson),radius,STRUCT(units,steps)))
);