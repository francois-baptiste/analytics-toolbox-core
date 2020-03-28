CREATE OR REPLACE FUNCTION geolib.turf.ST_BUFFER(geojson GEOGRAPHY, radius NUMERIC, units STRING, steps NUMERIC) AS (
  ST_GEOGFROMGEOJSON(geolib.turf.buffer(ST_ASGEOJSON(geojson),radius,STRUCT(units,steps)))
);