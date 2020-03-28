CREATE OR REPLACE FUNCTION libjs4eu.turf.ST_BUFFER(geojson GEOGRAPHY, radius NUMERIC, units STRING, steps NUMERIC) AS (
  ST_GEOGFROMGEOJSON(libjs4eu.turf.buffer(ST_ASGEOJSON(geojson),radius,STRUCT(units,steps)))
);