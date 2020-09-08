CREATE OR REPLACE FUNCTION libjs4eu.s2.ST_S2(point GEOGRAPHY, resolution NUMERIC) AS (
  libjs4eu.h3.geoToS3(ST_Y(point),ST_X(point),resolution)
);
