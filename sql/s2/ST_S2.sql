CREATE OR REPLACE FUNCTION jslibs.s2.ST_S2(point GEOGRAPHY, resolution NUMERIC) AS (
  jslibs.h3.geoToS3(ST_Y(point),ST_X(point),resolution)
);
